// routes.dart
import 'package:flutter/material.dart';

// Pages principales
import 'screens/home/home_screen.dart';
import 'screens/ search/search_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/consultation/consultation_screen.dart';
import 'screens/consultation/webrtc_screen.dart';
import 'screens/message/message_screen.dart';

// Authentification
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/auth/role_selector_screen.dart';
import 'screens/auth/recovery_screen.dart';

// Pages publiques et alertes
import 'screens/public/campaigns_screen.dart';
import 'screens/alerts/health_alerts_screen.dart';

// Dossier médical & rappels
import 'screens/medical/medical_record_screen.dart';
import 'screens/medical/reminders_screen.dart';

// Conseils & éducation
import 'screens/advice/advice_base_screen.dart';
import 'screens/education/education_screen.dart';

// Urgence & feedback
import 'screens/emergency/emergency_screen.dart';
import 'screens/feedback/feedback_screen.dart';

// Médecins
import 'screens/doctor/dashboard_screen.dart';
import 'screens/doctor/patient_file_screen.dart';
import 'screens/doctor/prescription_screen.dart';
import 'screens/doctor/schedule_screen.dart';
import 'screens/doctor/credentials_upload_screen.dart';

// Réglages, hors ligne, paiement
import 'screens/settings/language_selector_screen.dart';
import 'screens/settings/consent_screen.dart';
import 'screens/offline/offline_mode_screen.dart';
import 'screens/payment/payment_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (_) => const HomeScreen(),
  '/search': (_) => const SearchScreen(),
  '/profile': (_) => const ProfileScreen(),
  '/consultation': (_) => const ConsultationScreen(),
  '/webrtc': (_) => const WebRTCConsultationScreen(),
  '/message': (_) => const MessageScreen(),
  '/login': (_) => const LoginScreen(),
  '/register': (_) => const RegisterScreen(),
  '/role': (_) => const RoleSelectorScreen(),
  '/recovery': (_) => const RecoveryScreen(),
  '/campaigns': (_) => const CampaignsScreen(),
  '/alerts': (_) => const HealthAlertsScreen(),
  '/medical': (_) => const MedicalRecordScreen(),
  '/reminders': (_) => const RemindersScreen(),
  '/advice': (_) => const AdviceBaseScreen(),
  '/education': (_) => const EducationScreen(),
  '/emergency': (_) => const EmergencyScreen(),
  '/feedback': (_) => const FeedbackScreen(),
  '/dashboard': (_) => const DoctorDashboardScreen(),
  '/patient': (_) => const PatientFileScreen(),
  '/prescription': (_) => const PrescriptionScreen(),
  '/schedule': (_) => const ScheduleScreen(),
  '/credentials': (_) => const CredentialsUploadScreen(),
  '/language': (_) => const LanguageSelectorScreen(),
  '/consent': (_) => const ConsentScreen(),
  '/offline': (_) => const OfflineModeScreen(),
  '/payment': (_) => const PaymentScreen(),
};
