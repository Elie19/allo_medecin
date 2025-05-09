import os
import re

# Dossier contenant les fichiers .dart (mets ici le chemin vers lib/screens si besoin)
BASE_DIR = "lib/screens"

# Remplacement ciblé
def inject_navigation_buttons(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Cherche un bloc simple : Center(child: Text('...'))
    match = re.search(r"body: const Center\(child: Text\('(.*?)'\)\)", content)
    if match:
        label = match.group(1)
        replacement = f"""body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('{label}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: const Text('Accueil'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/search'),
              child: const Text('Top Docteurs'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/profile'),
              child: const Text('Profil utilisateur'),
            ),
          ],
        ),
      )"""
        content = content.replace(match.group(0), replacement)

        with open(file_path, "w", encoding="utf-8") as f:
            f.write(content)
        print(f"[✓] Modifié : {file_path}")

# Parcours tous les fichiers Dart
for root, _, files in os.walk(BASE_DIR):
    for file in files:
        if file.endswith(".dart"):
            inject_navigation_buttons(os.path.join(root, file))
