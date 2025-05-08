import os
import re

base_dir = "lib/screens"

for subdir, _, files in os.walk(base_dir):
    for file in files:
        if file.endswith(".dart"):
            filepath = os.path.join(subdir, file)
            with open(filepath, "r", encoding="utf-8") as f:
                content = f.read()

            # Regex match pour body: const Center(child: Text('...'))
            match = re.search(r"body:\s+const\s+Center\(child:\s+Text\('(.+?)'\)\)", content)
            if match:
                label = match.group(1)
                new_body = f"""body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('{label}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: const Text('Accueil'),
            ),
          ],
        ),
      )"""
                content = content.replace(match.group(0), new_body)

                with open(filepath, "w", encoding="utf-8") as f:
                    f.write(content)

                print(f"✅ Mis à jour : {filepath}")

