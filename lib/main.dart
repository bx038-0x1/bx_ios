import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class AppTranslations {
  static const Map<String, Map<String, String>> localizedValues = {
    'fr': {
      'app_title': 'BX Remote',
      'copy_bat': 'copier le .bat',
      'target_ip': 'Adresse IP cible',
      'port': 'Port',
      'how_to_connect': 'Comment se connecter ?',
      'updates': 'Mises a jours',
      'status_disconnected': 'statut : deconnecté',
      'status_connected': 'status : connecté',
      'command_hint': 'commandes a distance (ex: ls, mkdir, ifconfig)',
      'logs': 'logs',
      'hide': '< masquer',
      'show': '> afficher',
      'bat_config_title': 'Config de server .bat',
      'generate_and_host': 'Generer et heberger',
      'help_title': 'Guide de connexion et aide',
      'tab_windows': 'windows',
      'tab_macos': 'macos',
      'tab_android': 'android',
      'maj_title': 'M.A.J. & News',
      'v1_title': 'Version 1.0.0',
      'v1_desc': '- Modification du bouton de connexion.\n- Ajout édition pour le script server.bat .',
      'v2_title': 'Version 1.0.1 / News',
      'v2_desc': '- Nouvelles langues bientôt disponibles: (anglais, allemand, portugais).',
      'v3_title': 'Version 1.0.2 / News',
      'v3_desc': '- Ajout du système multilingue.\n- Console adaptative et popup de récupération .bat.',
      'v4_title': 'Version 1.0.3 / News',
      'v4_desc': '- Support de multiples ports de connexion.\n- Sélection dynamique du sujet de message.',
      'v5_title': 'Version 1.0.4 / News',
      'v5_desc': '- Serveur HTTP intégré avec design pro et indicateur de chargement circulaire.\n- Commande curl optimisée.',
      'step1_win': 'Étape 1 : creer un dossier securisé',
      'step1_win_desc': 'Pour éviter que Windows Defender ou votre pare-feu bloque l\'application, évitez le dossier /Downloads.\n\nCréez un dossier neuf à la racine de votre système, par exemple : C:\\BXRemote.',
      'step2_win': 'Étape 2 : autorisations du dossier',
      'step2_win_desc': 'Faites un clic droit sur votre dossier créé -> Propriétés -> Sécurité.\n\nVérifiez que votre session utilisateur possède le contrôle total sur ce dossier afin d\'exécuter des fichiers sans contraintes.',
      'step3_win': 'Étape 3 : deploiement du script .bat',
      'step3_win_desc': '1. Utilisez l\'option "Generer et heberger" pour lancer le serveur local.\n2. Récupérez le fichier via la commande curl Windows affichée.\n3. Double-cliquez pour exécuter l\'écouteur sur le port choisi.',
      'step4_win': 'Étape 4 : recuperer l adresse ip locale',
      'step4_win_desc': 'Ouvrez l\'invite de commande (cmd) sur votre PC, tapez \'ipconfig\' et repérez la ligne \'Adresse IPv4\' (ex: 192.168.1.35).\n\nEnterez cette IP et le port dans l\'application pour initier la liaison.',
      'step1_mac': 'Étape 1 : configurer un repertoire isole',
      'step1_mac_desc': 'macOS restreint l\'activité réseau brute dans le dossier Téléchargements standard.\n\nOuvrez votre Finder et créez un dossier isolé dans votre dossier utilisateur (ex: /Utilisateurs/votre-nom/BXConsole).',
      'step2_mac': 'Étape 2 : demarrer l ecoute reseau',
      'step2_mac_desc': 'Ouvrez l\'application Terminal sur votre Mac et déplacez-vous dans votre dossier sécurisé.\n\nTapez la commande de socket suivante pour ouvrir le port d\'écoute :\nnc -l 55555',
      'step3_mac': 'Étape 3 : autoriser les flux entrants',
      'step3_mac_desc': 'Si le système d\'exploitation macOS affiche une alerte de sécurité, acceptez explicitement la demande d\'autorisation réseau pour le Terminal.',
      'step4_mac': 'Étape 4 : renseigner l ip locale',
      'step4_mac_desc': 'Allez dans Réglages Système -> Réseau -> Wi-Fi ou Ethernet -> Détails.\n\nNotez l\'adresse IP locale affichée, renseignez-la dans BX Remote, puis validez.',
      'step1_droid': 'Étape 1 : installer un emulateur terminal',
      'step1_droid_desc': 'Pour que votre appareil Android puisse recevoir des commandes en local, téléchargez un émulateur de console réseau (ex: Termux) depuis une bibliothèque sécurisée.',
      'step2_droid': 'Étape 2 : initialiser l ecoute locale',
      'step2_droid_desc': 'Ouvrez votre application de terminal Android (Termux) puis saisissez l\'instruction suivante pour ouvrir le canal réseau interne :\nnc -l -p 55555',
      'step3_droid': 'Étape 3 : verifier l ip reseau de l appareil',
      'step3_droid_desc': 'Allez dans Paramètres Android -> À propos du téléphone -> Statut (ou Infos d\'état) -> Adresse IP.\n\nTant que l\'appareil reste connecté au même réseau Wi-Fi local que cet appareil Android, la liaison s\'effectuera directement via cette IP.',
      'select_subject_title': 'Choisir le sujet du message',
      'subject_error': 'Erreur',
      'subject_bug': 'Bug',
      'subject_update': 'Proposition update',
      'subject_review': 'Avis',
      'contact_title': 'Envoyer un message',
      'contact_hint': 'Tapez votre message ici...',
      'contact_send': 'Envoyer le message',
      'contact_success': 'Message envoyé avec succès !',
      'contact_error': 'Erreur lors de l\'envoi du message.',
      'privacy_title': 'Politique de confidentialité & Conditions',
      'privacy_content': 'En utilisant BX Remote, vous acceptez les conditions suivantes :\n\n1. L\'application utilise le réseau local pour transmettre vos commandes à votre ordinateur.\n2. Aucune donnée personnelle n\'est collectée ni revendue.\n3. Vous êtes seul responsable des commandes exécutées sur votre machine cible.',
      'privacy_accept': 'J\'accepte',
      'privacy_refuse': 'Quitter',
      'select_port': 'Choisir un port rapide',
      'log_invalid_ip_port': 'erreur : ip ou port invalide',
      'log_connecting': 'connexion a',
      'log_connected': 'connexion etablie',
      'log_disconnected': 'deconnecté',
      'log_network_error': 'erreur reseau',
      'log_connection_closed': 'connexion interrompue par la cible',
      'log_connection_failed': 'echec : cible introuvable',
      'log_no_device': 'erreur : aucun appareil connecté',
      'log_send_error': 'erreur d\'envoi',
      'log_server_started': 'serveur http démarré sur le port 8080',
      'server_status_title': 'Serveur HTTP & Réseau Local',
      'server_active': 'Serveur Actif (Port 8080)',
      'server_inactive': 'Serveur Inactif',
      'network_ips': 'Adresses IP détectées :',
      'cmd_to_run': 'Commande Windows (CMD / PowerShell) :',
      'stop_server': 'Arrêter',
      'close': 'Fermer',
    },
    'en': {
      'app_title': 'BX Remote',
      'copy_bat': 'copy bat script',
      'target_ip': 'Target IP Address',
      'port': 'Port',
      'how_to_connect': 'How to connect?',
      'updates': 'Updates',
      'status_disconnected': 'status: disconnected',
      'status_connected': 'status: connected',
      'command_hint': 'remote commands (e.g. ls, mkdir, ifconfig)',
      'logs': 'logs',
      'hide': '< hide',
      'show': '> show',
      'bat_config_title': 'Batch Server Config',
      'generate_and_host': 'Generate and host',
      'help_title': 'Connection Guide & Help',
      'tab_windows': 'windows',
      'tab_macos': 'macos',
      'tab_android': 'android',
      'maj_title': 'Updates & News',
      'v1_title': 'Version 1.0.0',
      'v1_desc': '- Updated connection button.\n- Added server.bat script editor.',
      'v2_title': 'Version 1.0.1 / News',
      'v2_desc': '- New languages coming soon: (English, German, Portuguese).',
      'v3_title': 'Version 1.0.2 / News',
      'v3_desc': '- Added multilingual system.\n- Adaptive console.',
      'v4_title': 'Version 1.0.3 / News',
      'v4_desc': '- Support for multiple connection ports.\n- Subject-based contact system.',
      'v5_title': 'Version 1.0.4 / News',
      'v5_desc': '- Integrated HTTP server with professional UI and circular progress indicator.\n- Optimized curl command.',
      'step1_win': 'Step 1: create a secure folder',
      'step1_win_desc': 'To avoid Windows Defender or firewall blocking, avoid the /Downloads folder.\n\nCreate a new folder at system root, e.g., C:\\BXRemote.',
      'step2_win': 'Step 2: folder permissions',
      'step2_win_desc': 'Right click folder -> Properties -> Security.\n\nEnsure your user session has full control.',
      'step3_win': 'Step 3: deploy .bat script',
      'step3_win_desc': '1. Use "Generate and host" to start local server.\n2. Retrieve file via Windows curl command.\n3. Double click to run listener on chosen port.',
      'step4_win': 'Step 4: retrieve local IP',
      'step4_win_desc': 'Open cmd, type \'ipconfig\' and find IPv4 Address (e.g. 192.168.1.35).\n\nEnter this IP and port.',
      'step1_mac': 'Step 1: isolated directory',
      'step1_mac_desc': 'macOS restricts raw network activity in Downloads.\n\nCreate an isolated folder in user directory.',
      'step2_mac': 'Step 2: start network listener',
      'step2_mac_desc': 'Open Terminal and run:\nnc -l 55555',
      'step3_mac': 'Step 3: allow incoming streams',
      'step3_mac_desc': 'Accept macOS security prompt for Terminal.',
      'step4_mac': 'Step 4: local IP settings',
      'step4_mac_desc': 'Go to System Settings -> Network -> Wi-Fi -> Details and note IP.',
      'step1_droid': 'Step 1: terminal emulator',
      'step1_droid_desc': 'Download Termux on Android.',
      'step2_droid': 'Step 2: local listener',
      'step2_droid_desc': 'Run: nc -l -p 55555',
      'step3_droid': 'Step 3: check network IP',
      'step3_droid_desc': 'Check device IP in Android settings.',
      'select_subject_title': 'Select message subject',
      'subject_error': 'Error',
      'subject_bug': 'Bug',
      'subject_update': 'Update proposal',
      'subject_review': 'Review',
      'contact_title': 'Send a message',
      'contact_hint': 'Type your message here...',
      'contact_send': 'Send message',
      'contact_success': 'Message sent successfully!',
      'contact_error': 'Error sending message.',
      'privacy_title': 'Privacy Policy & Terms',
      'privacy_content': 'By using BX Remote, you agree to the following terms:\n\n1. The app uses local network to transmit commands to your PC.\n2. No personal data is collected or sold.\n3. You are solely responsible for commands executed on your target machine.',
      'privacy_accept': 'I Accept',
      'privacy_refuse': 'Exit',
      'select_port': 'Select quick port',
      'log_invalid_ip_port': 'error: invalid ip or port',
      'log_connecting': 'connecting to',
      'log_connected': 'connection established',
      'log_disconnected': 'disconnected',
      'log_network_error': 'network error',
      'log_connection_closed': 'connection closed by target',
      'log_connection_failed': 'failed: target unreachable',
      'log_no_device': 'error: no device connected',
      'log_send_error': 'send error',
      'log_server_started': 'http server started on port 8080',
      'server_status_title': 'HTTP Server & Local Network',
      'server_active': 'Server Active (Port 8080)',
      'server_inactive': 'Server Inactive',
      'network_ips': 'Detected IP Addresses:',
      'cmd_to_run': 'Windows Command (CMD / PowerShell):',
      'stop_server': 'Stop',
      'close': 'Close',
    },
    'es': {
      'app_title': 'BX Remote',
      'copy_bat': 'copiar .bat',
      'target_ip': 'Dirección IP de destino',
      'port': 'Puerto',
      'how_to_connect': '¿Cómo conectarse?',
      'updates': 'Actualizaciones',
      'status_disconnected': 'estado: desconectado',
      'status_connected': 'estado: conectado',
      'command_hint': 'comandos remotos (ej: ls, mkdir, ifconfig)',
      'logs': 'registros',
      'hide': '< ocultar',
      'show': '> mostrar',
      'bat_config_title': 'Config servidor .bat',
      'generate_and_host': 'Generar y alojar',
      'help_title': 'Guía de conexión',
      'tab_windows': 'windows',
      'tab_macos': 'macos',
      'tab_android': 'android',
      'maj_title': 'Actualizaciones',
      'v1_title': 'Versión 1.0.0',
      'v1_desc': '- Botón de conexión actualizado.',
      'v2_title': 'Versión 1.0.1 / News',
      'v2_desc': '- Nuevos idiomas próximamente.',
      'v3_title': 'Versión 1.0.2 / News',
      'v3_desc': '- Sistema multilingüe añadido.',
      'v4_title': 'Versión 1.0.3 / News',
      'v4_desc': '- Soporte para múltiples puertos.',
      'v5_title': 'Versión 1.0.4 / News',
      'v5_desc': '- Servidor HTTP integrado con interfaz profesional e indicador circular.',
      'step1_win': 'Paso 1: carpeta segura',
      'step1_win_desc': 'Evite /Downloads. Cree C:\\BXRemote.',
      'step2_win': 'Paso 2: permisos',
      'step2_win_desc': 'Control total requerido.',
      'step3_win': 'Paso 3: script .bat',
      'step3_win_desc': 'Use "Generar y alojar" y descargue vía curl.',
      'step4_win': 'Paso 4: IP local',
      'step4_win_desc': 'Use ipconfig en cmd.',
      'step1_mac': 'Paso 1: directorio aislado',
      'step1_mac_desc': 'Crear carpeta en Mac.',
      'step2_mac': 'Paso 2: nc -l 55555',
      'step2_mac_desc': 'Abrir Terminal.',
      'step3_mac': 'Paso 3: permisos',
      'step3_mac_desc': 'Aceptar alerta.',
      'step4_mac': 'Paso 4: IP local',
      'step4_mac_desc': 'Revisar Red.',
      'step1_droid': 'Paso 1: emulador',
      'step1_droid_desc': 'Instalar Termux.',
      'step2_droid': 'Paso 2: nc',
      'step2_droid_desc': 'Ejecutar comando.',
      'step3_droid': 'Paso 3: IP',
      'step3_droid_desc': 'Ver ajustes Wi-Fi.',
      'select_subject_title': 'Seleccionar tema',
      'subject_error': 'Error',
      'subject_bug': 'Bug',
      'subject_update': 'Propuesta de actualización',
      'subject_review': 'Reseña',
      'contact_title': 'Enviar un mensaje',
      'contact_hint': 'Escribe tu mensaje aquí...',
      'contact_send': 'Enviar mensaje',
      'contact_success': '¡Mensaje enviado con éxito!',
      'contact_error': 'Error al enviar el mensaje.',
      'privacy_title': 'Política de privacidad y Términos',
      'privacy_content': 'Al usar BX Remote, aceptas los siguientes términos:\n\n1. La aplicación utiliza la red local para transmitir comandos a tu PC.\n2. No se recopilan ni venden datos personales.\n3. Eres el único responsable de los comandos ejecutados en la máquina de destino.',
      'privacy_accept': 'Acepto',
      'privacy_refuse': 'Salir',
      'select_port': 'Seleccionar puerto rápido',
      'log_invalid_ip_port': 'error: ip o puerto no válido',
      'log_connecting': 'conectando a',
      'log_connected': 'conexión establecida',
      'log_disconnected': 'desconectado',
      'log_network_error': 'error de red',
      'log_connection_closed': 'conexión cerrada por el destino',
      'log_connection_failed': 'fallo: destino no encontrado',
      'log_no_device': 'error: ningún dispositivo conectado',
      'log_send_error': 'error de envío',
      'log_server_started': 'servidor http iniciado en puerto 8080',
      'server_status_title': 'Servidor HTTP y Red Local',
      'server_active': 'Servidor Activo (Puerto 8080)',
      'server_inactive': 'Servidor Inactivo',
      'network_ips': 'Direcciones IP detectadas:',
      'cmd_to_run': 'Comando Windows (CMD / PowerShell):',
      'stop_server': 'Detener',
      'close': 'Cerrar',
    },
    'de': {
      'app_title': 'BX Remote',
      'copy_bat': '.bat kopieren',
      'target_ip': 'Ziel-IP-Adresse',
      'port': 'Port',
      'how_to_connect': 'Wie verbinden?',
      'updates': 'Updates',
      'status_disconnected': 'Status: getrennt',
      'status_connected': 'Status: verbunden',
      'command_hint': 'Befehle (z.B. ls, mkdir, ifconfig)',
      'logs': 'Logs',
      'hide': '< ausblenden',
      'show': '> anzeigen',
      'bat_config_title': 'Batch Server Konfig',
      'generate_and_host': 'Generieren und hosten',
      'help_title': 'Verbindungsanleitung',
      'tab_windows': 'windows',
      'tab_macos': 'macos',
      'tab_android': 'android',
      'maj_title': 'Updates',
      'v1_title': 'Version 1.0.0',
      'v1_desc': '- Aktualisiert.',
      'v2_title': 'Version 1.0.1',
      'v2_desc': '- Neue Sprachen bald verfügbar.',
      'v3_title': 'Version 1.0.2 / News',
      'v3_desc': '- Mehrsprachiges System hinzugefügt.',
      'v4_title': 'Version 1.0.3 / News',
      'v4_desc': '- Unterstützung für mehrere Ports.',
      'v5_title': 'Version 1.0.4 / News',
      'v5_desc': '- Integrierter HTTP-Server mit professioneller UI und Kreisfortschrittsanzeige.',
      'step1_win': 'Schritt 1: Ordner',
      'step1_win_desc': 'C:\\BXRemote erstellen.',
      'step2_win': 'Schritt 2: Rechte',
      'step2_win_desc': 'Vollzugriff.',
      'step3_win': 'Schritt 3: Skript',
      'step3_win_desc': 'Verwenden Sie "Generieren und hosten" und laden Sie über curl herunter.',
      'step4_win': 'Schritt 4: IP',
      'step4_win_desc': 'ipconfig nutzen.',
      'step1_mac': 'Schritt 1: Ordner',
      'step1_mac_desc': 'Mac Ordner.',
      'step2_mac': 'Schritt 2: Terminal',
      'step2_mac_desc': 'nc -l 55555',
      'step3_mac': 'Schritt 3: Erlaubnis',
      'step3_mac_desc': 'Netzwerk erlauben.',
      'step4_mac': 'Schritt 4: IP',
      'step4_mac_desc': 'Wi-Fi Details.',
      'step1_droid': 'Schritt 1: Termux',
      'step1_droid_desc': 'Installieren.',
      'step2_droid': 'Schritt 2: Socket',
      'step2_droid_desc': 'nc -l -p 55555',
      'step3_droid': 'Schritt 3: IP',
      'step3_droid_desc': 'Prüfen.',
      'select_subject_title': 'Thema auswählen',
      'subject_error': 'Fehler',
      'subject_bug': 'Bug',
      'subject_update': 'Update-Vorschlag',
      'subject_review': 'Bewertung',
      'contact_title': 'Nachricht senden',
      'contact_hint': 'Geben Sie Ihre Nachricht hier ein...',
      'contact_send': 'Nachricht senden',
      'contact_success': 'Nachricht erfolgreich gesendet!',
      'contact_error': 'Fehler beim Senden der Nachricht.',
      'privacy_title': 'Datenschutzrichtlinie & Bedingungen',
      'privacy_content': 'Durch die Nutzung von BX Remote stimmen Sie den folgenden Bedingungen zu:\n\n1. Die App nutzt das lokale Netzwerk zur Übertragung von Befehlen an Ihren PC.\n2. Es werden keine personenbezogenen Daten gesammelt oder verkauft.\n3. Sie sind allein verantwortlich für die auf dem Zielgerät ausgeführten Befehle.',
      'privacy_accept': 'Akzeptieren',
      'privacy_refuse': 'Beenden',
      'select_port': 'Schnellport auswählen',
      'log_invalid_ip_port': 'Fehler: ungültige IP oder Port',
      'log_connecting': 'verbinde mit',
      'log_connected': 'Verbindung hergestellt',
      'log_disconnected': 'getrennt',
      'log_network_error': 'Netzwerkfehler',
      'log_connection_closed': 'Verbindung vom Ziel beendet',
      'log_connection_failed': 'Fehler: Ziel nicht erreichbar',
      'log_no_device': 'Fehler: kein Gerät verbunden',
      'log_send_error': 'Sendefehler',
      'log_server_started': 'HTTP-Server auf Port 8080 gestartet',
      'server_status_title': 'HTTP-Server & Lokales Netzwerk',
      'server_active': 'Server Aktiv (Port 8080)',
      'server_inactive': 'Server Inaktiv',
      'network_ips': 'Erkannte IP-Adressen:',
      'cmd_to_run': 'Windows-Befehl (CMD / PowerShell):',
      'stop_server': 'Stoppen',
      'close': 'Schließen',
    },
    'pt': {
      'app_title': 'BX Remote',
      'copy_bat': 'copiar .bat',
      'target_ip': 'Endereço IP de destino',
      'port': 'Porta',
      'how_to_connect': 'Como conectar?',
      'updates': 'Atualizações',
      'status_disconnected': 'status: desconectado',
      'status_connected': 'status: conectado',
      'command_hint': 'comandos remotos (ex: ls, mkdir, ifconfig)',
      'logs': 'logs',
      'hide': '< ocultar',
      'show': '> mostrar',
      'bat_config_title': 'Config do servidor .bat',
      'generate_and_host': 'Gerar e hospedar',
      'help_title': 'Guia de conexão',
      'tab_windows': 'windows',
      'tab_macos': 'macos',
      'tab_android': 'android',
      'maj_title': 'Atualizações',
      'v1_title': 'Versão 1.0.0',
      'v1_desc': '- Atualizado.',
      'v2_title': 'Version 1.0.1',
      'v2_desc': '- Novos idiomas em breve.',
      'v3_title': 'Version 1.0.2 / News',
      'v3_desc': '- Adicionado sistema multilíngue.',
      'v4_title': 'Version 1.0.3 / News',
      'v4_desc': '- Suporte para múltiplas portas.',
      'v5_title': 'Version 1.0.4 / News',
      'v5_desc': '- Servidor HTTP integrado com interface profissional e indicador de progresso circular.',
      'step1_win': 'Passo 1: Pasta',
      'step1_win_desc': 'Criar C:\\BXRemote.',
      'step2_win': 'Passo 2: Permissões',
      'step2_win_desc': 'Controle total.',
      'step3_win': 'Passo 3: Script',
      'step3_win_desc': 'Use "Gerar e hospedar" e baixe via curl.',
      'step4_win': 'Passo 4: IP',
      'step4_win_desc': 'Usar ipconfig.',
      'step1_mac': 'Passo 1: Pasta',
      'step1_mac_desc': 'Criar diretório.',
      'step2_mac': 'Passo 2: Terminal',
      'step2_mac_desc': 'nc -l 55555',
      'step3_mac': 'Passo 3: Permissão',
      'step3_mac_desc': 'Aceitar.',
      'step4_mac': 'Passo 4: IP',
      'step4_mac_desc': 'Ver rede.',
      'step1_droid': 'Passo 1: Termux',
      'step1_droid_desc': 'Instalar.',
      'step2_droid': 'Passo 2: Socket',
      'step2_droid_desc': 'nc -l -p 55555',
      'step3_droid': 'Passo 3: IP',
      'step3_droid_desc': 'Verificar.',
      'select_subject_title': 'Selecionar assunto',
      'subject_error': 'Erro',
      'subject_bug': 'Bug',
      'subject_update': 'Proposta de atualização',
      'subject_review': 'Avaliação',
      'contact_title': 'Enviar mensagem',
      'contact_hint': 'Digite sua mensagem aqui...',
      'contact_send': 'Enviar mensagem',
      'contact_success': 'Mensagem enviada com sucesso!',
      'contact_error': 'Erro ao enviar mensagem.',
      'privacy_title': 'Política de Privacidade e Termos',
      'privacy_content': 'Ao usar o BX Remote, você concorda com os seguintes termos:\n\n1. O aplicativo usa a rede local para transmitir comandos para o seu PC.\n2. Nenhum dado pessoal é coletado ou vendido.\n3. Você é o único responsável pelos comandos executados na máquina de destino.',
      'privacy_accept': 'Aceitar',
      'privacy_refuse': 'Sair',
      'select_port': 'Selecionar porta rápida',
      'log_invalid_ip_port': 'erro: ip ou porta inválido',
      'log_connecting': 'conectando a',
      'log_connected': 'conexão estabelecida',
      'log_disconnected': 'desconectado',
      'log_network_error': 'erro de rede',
      'log_connection_closed': 'conexão fechada pelo destino',
      'log_connection_failed': 'falha: destino inacessível',
      'log_no_device': 'erro: nenhum dispositivo conectado',
      'log_send_error': 'erro ao enviar',
      'log_server_started': 'servidor http iniciado na porta 8080',
      'server_status_title': 'Servidor HTTP e Rede Local',
      'server_active': 'Server Ativo (Porta 8080)',
      'server_inactive': 'Server Inativo',
      'network_ips': 'Endereços IP detectados:',
      'cmd_to_run': 'Comando Windows (CMD / PowerShell):',
      'stop_server': 'Parar',
      'close': 'Fechar',
    }
  };

  static String get(String key, String lang) {
    return localizedValues[lang]?[key] ?? localizedValues['fr']?[key] ?? key;
  }
}

Future<bool> sendDiscordWebhook(String text) async {
  const webhookUrl = 'https://discord.com/api/webhooks/1561734170127114240/4AiY3UENI5cki92nQ22ntTq7j1uvmZ_tRRoFMO9M3XFnM24uX2P6MsCwL_GF4QqJtASD';
  try {
    final client = HttpClient();
    final request = await client.postUrl(Uri.parse(webhookUrl));
    request.headers.set('content-type', 'application/json');
    request.add(utf8.encode(jsonEncode({'content': text})));
    final response = await request.close();
    client.close();
    return response.statusCode >= 200 && response.statusCode < 300;
  } catch (_) {
    return false;
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _currentLang = 'fr';

  void _changeLang(String lang) {
    setState(() {
      _currentLang = lang;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF000000),
        primaryColor: const Color(0xFFFF0000),
      ),
      home: RemoteControlScreen(
        currentLang: _currentLang,
        onLangChanged: _changeLang,
      ),
    );
  }
}

class RemoteControlScreen extends StatefulWidget {
  final String currentLang;
  final ValueChanged<String> onLangChanged;

  const RemoteControlScreen({
    super.key,
    required this.currentLang,
    required this.onLangChanged,
  });

  @override
  State<RemoteControlScreen> createState() => _RemoteControlScreenState();
}

class _RemoteControlScreenState extends State<RemoteControlScreen> with SingleTickerProviderStateMixin {
  final TextEditingController _ipController = TextEditingController(text: "192.168.1.1");
  final TextEditingController _portController = TextEditingController(text: "55555");
  final TextEditingController _commandController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final ScrollController _overlayScrollController = ScrollController();
  final FocusNode _commandFocusNode = FocusNode();

  Socket? _socket;
  bool _isLoading = false;
  bool _isConnected = false;
  bool _showLogs = true;
  bool _isTypingOrFocused = false;
  List<Map<String, dynamic>> logs = [];

  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  final String _batScriptContent = r'''@echo off
title serveur local
echo lancement du serveur sur le port 55555...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$listener = [System.Net.Sockets.TcpListener]55555; $listener.Start(); while ($true) { $client = $listener.AcceptTcpClient(); $stream = $client.GetStream(); $reader = New-Object System.IO.StreamReader($stream); $writer = New-Object System.IO.StreamWriter($stream); $writer.AutoFlush = $true; $writer.WriteLine('connecter au windows'); while ($client.Connected) { $cmd = $reader.ReadLine(); if ($cmd -eq $null) { break }; try { $out = Invoke-Expression $cmd 2>&1 | Out-String; if ([string]::IsNullOrWhiteSpace($out)) { $out = 'commande executer sans retour.' }; $writer.WriteLine($out); } catch { $writer.WriteLine('erreur: ' + $_.Exception.Message); } } $client.Close(); }"
pause''';

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.90).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _commandFocusNode.addListener(_updateTypingState);
    _commandController.addListener(_updateTypingState);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkPrivacyConsent();
    });
  }

  Future<void> _checkPrivacyConsent() async {
    final prefs = await SharedPreferences.getInstance();
    final accepted = prefs.getBool('privacy_accepted') ?? false;

    if (!accepted && mounted) {
      _showPrivacyDialog();
    }
  }

  void _showPrivacyDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            backgroundColor: const Color(0xFF0A0A0A),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Color(0xFFFF0000), width: 1.5),
            ),
            title: Text(
              tr('privacy_title'),
              style: const TextStyle(color: Color(0xFFFF0000), fontSize: 16, fontFamily: "monospace", fontWeight: FontWeight.bold),
            ),
            content: SingleChildScrollView(
              child: Text(
                tr('privacy_content'),
                style: const TextStyle(color: Colors.white70, fontSize: 13, height: 1.5, fontFamily: "monospace"),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text(tr('privacy_refuse'), style: const TextStyle(color: Colors.white38)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF0000),
                  foregroundColor: Colors.black,
                  elevation: 4,
                  shadowColor: const Color(0xFFFF0000).withOpacity(0.4),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('privacy_accepted', true);
                  if (mounted) Navigator.pop(context);
                },
                child: Text(tr('privacy_accept'), style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showContactPopup() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF0A0A0A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Colors.white10),
          ),
          title: Text(
            tr('select_subject_title'),
            style: const TextStyle(color: Color(0xFFFF0000), fontSize: 14, fontFamily: "monospace", fontWeight: FontWeight.bold),
          ),
          content: SizedBox(
            width: double.infinity,
            child: ListView(
              shrinkWrap: true,
              children: [
                _buildSubjectTile(tr('subject_error'), Colors.red),
                _buildSubjectTile(tr('subject_bug'), Colors.orange),
                _buildSubjectTile(tr('subject_update'), Colors.blue),
                _buildSubjectTile(tr('subject_review'), Colors.green),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSubjectTile(String subject, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF141414),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: ListTile(
        leading: Icon(Icons.label_outline, color: color, size: 20),
        title: Text(subject, style: const TextStyle(color: Colors.white, fontSize: 13, fontFamily: "monospace")),
        onTap: () {
          Navigator.pop(context);
          _showContentMessagePopup(subject);
        },
      ),
    );
  }

  void _showContentMessagePopup(String subject) {
    final TextEditingController contactController = TextEditingController();
    bool isSendingLocal = false;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateModal) {
            return AlertDialog(
              backgroundColor: const Color(0xFF0A0A0A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Colors.white10),
              ),
              title: Text(
                "[$subject] ${tr('contact_title')}",
                style: const TextStyle(color: Color(0xFFFF0000), fontSize: 14, fontFamily: "monospace", fontWeight: FontWeight.bold),
              ),
              content: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: contactController,
                      maxLines: 4,
                      style: const TextStyle(color: Colors.white, fontSize: 13, fontFamily: "monospace"),
                      decoration: InputDecoration(
                        hintText: tr('contact_hint'),
                        hintStyle: const TextStyle(color: Colors.white24, fontSize: 13),
                        filled: true,
                        fillColor: const Color(0xFF121212),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.white10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Color(0xFFFF0000)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("OK", style: TextStyle(color: Colors.white38)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF0000),
                    foregroundColor: Colors.black,
                    elevation: 4,
                    shadowColor: const Color(0xFFFF0000).withOpacity(0.4),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: isSendingLocal
                      ? null
                      : () async {
                          final text = contactController.text.trim();
                          if (text.isEmpty) return;

                          setStateModal(() {
                            isSendingLocal = true;
                          });

                          final formattedMessage = "[$subject] $text";
                          final success = await sendDiscordWebhook(formattedMessage);

                          if (!mounted) return;

                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(success ? tr('contact_success') : tr('contact_error')),
                              backgroundColor: success ? Colors.green : Colors.red,
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                          );
                        },
                  child: isSendingLocal
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                            strokeWidth: 2,
                          ),
                        )
                      : Text(tr('contact_send'), style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showPortSelectorMenu(BuildContext context) {
    showMenu<String>(
      context: context,
      position: const RelativeRect.fromLTRB(100, 200, 50, 100),
      color: const Color(0xFF141414),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      items: const [
        PopupMenuItem(value: '55555', child: Text('55555 (Défaut)', style: TextStyle(color: Colors.white, fontSize: 12))),
        PopupMenuItem(value: '80', child: Text('80 (HTTP)', style: TextStyle(color: Colors.white, fontSize: 12))),
        PopupMenuItem(value: '443', child: Text('443 (HTTPS)', style: TextStyle(color: Colors.white, fontSize: 12))),
        PopupMenuItem(value: '2222', child: Text('2222 (SSH Alt)', style: TextStyle(color: Colors.white, fontSize: 12))),
        PopupMenuItem(value: '8080', child: Text('8080 (Proxy)', style: TextStyle(color: Colors.white, fontSize: 12))),
      ],
    ).then((selectedPort) {
      if (selectedPort != null) {
        setState(() {
          _portController.text = selectedPort;
        });
      }
    });
  }

  void _updateTypingState() {
    final active = _commandFocusNode.hasFocus || _commandController.text.trim().isNotEmpty;
    if (active != _isTypingOrFocused) {
      setState(() {
        _isTypingOrFocused = active;
      });
    }
  }

  @override
  void dispose() {
    _commandFocusNode.removeListener(_updateTypingState);
    _commandController.removeListener(_updateTypingState);
    _commandFocusNode.dispose();
    _animationController.dispose();
    _ipController.dispose();
    _portController.dispose();
    _commandController.dispose();
    _scrollController.dispose();
    _overlayScrollController.dispose();
    _socket?.destroy();
    super.dispose();
  }

  String tr(String key) => AppTranslations.get(key, widget.currentLang);

  void _addLogKey(String key, {String extra = "", bool isError = false}) {
    if (!mounted) return;
    setState(() {
      logs.add({
        "key": key,
        "extra": extra,
        "time": DateTime.now().toString().substring(11, 19),
        "isError": isError
      });
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
      if (_overlayScrollController.hasClients) {
        _overlayScrollController.animateTo(
          _overlayScrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _addRawLog(String message, {bool isError = false}) {
    if (!mounted) return;
    setState(() {
      logs.add({
        "raw": message,
        "time": DateTime.now().toString().substring(11, 19),
        "isError": isError
      });
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
      if (_overlayScrollController.hasClients) {
        _overlayScrollController.animateTo(
          _overlayScrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  String _formatLogItem(Map<String, dynamic> item) {
    final time = item["time"] ?? "";
    if (item.containsKey("raw")) {
      return "[$time] ${item["raw"]}";
    }
    final key = item["key"] ?? "";
    final extra = item["extra"] ?? "";
    final translated = tr(key);
    return "[$time] $translated $extra".trim().toLowerCase();
  }

  void _navigateToBatScript() async {
    final logKey = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (context) => BatScriptScreen(
          scriptContent: _batScriptContent,
          currentLang: widget.currentLang,
        ),
      ),
    );
    
    if (logKey != null) {
      _addLogKey(logKey);
    }
  }

  void _navigateToHelp() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ConnectionHelpScreen(currentLang: widget.currentLang),
      ),
    );
  }

  void _toggleConnection() async {
    if (_isConnected) {
      _disconnect();
      return;
    }

    final ip = _ipController.text.trim();
    final port = int.tryParse(_portController.text.trim());

    if (ip.isEmpty || port == null) {
      _addLogKey("log_invalid_ip_port", isError: true);
      return;
    }

    setState(() {
      _isLoading = true;
    });
    _addLogKey("log_connecting", extra: "$ip:$port...");

    try {
      _socket = await Socket.connect(ip, port, timeout: const Duration(seconds: 4));
      
      setState(() {
        _isConnected = true;
        _isLoading = false;
      });
      _addLogKey("log_connected");

      _socket!.listen(
        (List<int> data) {
          final response = utf8.decode(data).trim();
          _addRawLog(response);
        },
        onError: (error) {
          _addLogKey("log_network_error", extra: ": $error", isError: true);
          _disconnect();
        },
        onDone: () {
          _addLogKey("log_connection_closed");
          _disconnect();
        },
      );
    } catch (e) {
      setState(() {
        _isLoading = false;
        _isConnected = false;
      });
      _addLogKey("log_connection_failed", extra: "($e)", isError: true);
    }
  }

  void _disconnect() {
    if (_socket != null) {
      _socket!.destroy();
      _socket = null;
    }
    setState(() {
      _isConnected = false;
      _isLoading = false;
    });
    _addLogKey("log_disconnected");
  }

  void _handleCommandExecution() {
    final input = _commandController.text.trim();
    if (input.isEmpty) return;

    _commandController.clear();

    if (_socket == null) {
      _addLogKey("log_no_device", isError: true);
      return;
    }
    try {
      _socket!.write("$input\n");
      _addRawLog("> $input");
    } catch (e) {
      _addLogKey("log_send_error", extra: ": $e", isError: true);
    }
  }

  InputDecoration _customInputStyle(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: Colors.white24, fontSize: 13),
      filled: true,
      fillColor: const Color(0xFF0A0A0A),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.white10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFFFF0000), width: 1.5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(tr('app_title'), style: const TextStyle(fontSize: 18, letterSpacing: 1, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF000000),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.mail_outline, color: Color(0xFFFF0000), size: 20),
            onPressed: _showContactPopup,
            tooltip: tr('contact_title'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: widget.currentLang,
                dropdownColor: const Color(0xFF141414),
                icon: const Icon(Icons.language, color: Color(0xFFFF0000), size: 18),
                items: const [
                  DropdownMenuItem(value: 'fr', child: Text('🇫🇷FR', style: TextStyle(color: Colors.blue, fontSize: 12))),
                  DropdownMenuItem(value: 'en', child: Text('🇺🇸EN', style: TextStyle(color: Colors.white, fontSize: 12))),
                  DropdownMenuItem(value: 'es', child: Text('🇪🇸ES', style: TextStyle(color: Colors.yellow, fontSize: 12))),
                  DropdownMenuItem(value: 'de', child: Text('🇩🇪DE', style: TextStyle(color: Colors.red, fontSize: 12))),
                  DropdownMenuItem(value: 'pt', child: Text('🇵🇹PT', style: TextStyle(color: Colors.green, fontSize: 12))),
                ],
                onChanged: (val) {
                  if (val != null) widget.onLangChanged(val);
                },
              ),
            ),
          ),
          TextButton(
            onPressed: _navigateToBatScript,
            child: Text(tr('copy_bat'), style: const TextStyle(color: Color(0xFFFF0000), fontSize: 13, fontWeight: FontWeight.bold)),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: _ipController,
                          decoration: _customInputStyle(tr('target_ip')),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 1,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            TextField(
                              controller: _portController,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(fontSize: 16, color: Colors.white),
                              decoration: _customInputStyle(tr('port')),
                            ),
                            IconButton(
                              icon: const Icon(Icons.arrow_drop_down, color: Color(0xFFFF0000)),
                              onPressed: () => _showPortSelectorMenu(context),
                              tooltip: tr('select_port'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton.icon(
                      onPressed: _navigateToHelp,
                      icon: const Icon(Icons.help_outline, color: Color(0xFFFF0000), size: 16),
                      label: Text(
                        tr('how_to_connect'),
                        style: const TextStyle(color: Color(0xFFFF0000), fontSize: 13),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton.icon(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              backgroundColor: const Color(0xFF0A0A0A),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: const BorderSide(color: Colors.white10),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                width: double.infinity,
                                height: 400,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          tr('maj_title'),
                                          style: const TextStyle(
                                            color: Color(0xFFFF0000),
                                            fontSize: 14,
                                            fontFamily: "monospace",
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => Navigator.pop(context),
                                          child: const Icon(Icons.close, color: Colors.white38, size: 18),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    const Divider(color: Colors.white10, height: 1),
                                    const SizedBox(height: 10),
                                    Expanded(
                                      child: ListView(
                                        children: [
                                          Theme(
                                            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                            child: ExpansionTile(
                                              iconColor: const Color(0xFFFF0000),
                                              collapsedIconColor: Colors.white38,
                                              title: Text(
                                                tr('v1_title'),
                                                style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold, fontFamily: "monospace"),
                                              ),
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      tr('v1_desc'),
                                                      style: const TextStyle(color: Colors.white70, fontSize: 12, height: 1.4, fontFamily: "monospace"),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(color: Colors.white10),
                                          Theme(
                                            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                            child: ExpansionTile(
                                              iconColor: const Color(0xFFFF0000),
                                              collapsedIconColor: Colors.white38,
                                              title: Text(
                                                tr('v2_title'),
                                                style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold, fontFamily: "monospace"),
                                              ),
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      tr('v2_desc'),
                                                      style: const TextStyle(color: Colors.white70, fontSize: 12, height: 1.4, fontFamily: "monospace"),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(color: Colors.white10),
                                          Theme(
                                            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                            child: ExpansionTile(
                                              iconColor: const Color(0xFFFF0000),
                                              collapsedIconColor: Colors.white38,
                                              title: Text(
                                                tr('v3_title'),
                                                style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold, fontFamily: "monospace"),
                                              ),
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      tr('v3_desc'),
                                                      style: const TextStyle(color: Colors.white70, fontSize: 12, height: 1.4, fontFamily: "monospace"),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(color: Colors.white10),
                                          Theme(
                                            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                            child: ExpansionTile(
                                              iconColor: const Color(0xFFFF0000),
                                              collapsedIconColor: Colors.white38,
                                              title: Text(
                                                tr('v4_title'),
                                                style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold, fontFamily: "monospace"),
                                              ),
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      tr('v4_desc'),
                                                      style: const TextStyle(color: Colors.white70, fontSize: 12, height: 1.4, fontFamily: "monospace"),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(color: Colors.white10),
                                          Theme(
                                            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                            child: ExpansionTile(
                                              iconColor: const Color(0xFFFF0000),
                                              collapsedIconColor: Colors.white38,
                                              title: Text(
                                                tr('v5_title'),
                                                style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold, fontFamily: "monospace"),
                                              ),
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      tr('v5_desc'),
                                                      style: const TextStyle(color: Colors.white70, fontSize: 12, height: 1.4, fontFamily: "monospace"),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.update, color: Color(0xFFFF0000), size: 16),
                      label: Text(
                        tr('updates'),
                        style: const TextStyle(color: Color(0xFFFF0000), fontSize: 13),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTapDown: (_) => _animationController.forward(),
                    onTapUp: (_) {
                      _animationController.reverse();
                      if (!_isLoading) _toggleConnection();
                    },
                    onTapCancel: () => _animationController.reverse(),
                    child: ScaleTransition(
                      scale: _scaleAnimation,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: _isLoading
                                ? const CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF0000)),
                                    strokeWidth: 2,
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: _isConnected ? const Color(0xFFFF0000) : Colors.white10,
                                        width: 1.5,
                                      ),
                                    ),
                                  ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: _isConnected ? const Color(0xFF000000) : const Color(0xFFFF0000),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xFFFF0000).withOpacity(_isConnected ? 0.2 : 0.5),
                                  blurRadius: 15,
                                  spreadRadius: 2,
                                ),
                              ],
                              border: Border.all(
                                color: const Color(0xFFFF0000),
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                _isConnected ? Icons.close : Icons.sensors,
                                color: _isConnected ? const Color(0xFFFF0000) : Colors.black,
                                size: 85,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 10,
                        color: _isConnected ? const Color(0xFF00FF00) : const Color(0xFFFF0000),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        _isConnected ? tr('status_connected') : tr('status_disconnected'),
                        style: TextStyle(
                          fontSize: 14,
                          color: _isConnected ? const Color(0xFF00FF00) : Colors.white24,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _commandController,
                          focusNode: _commandFocusNode,
                          style: const TextStyle(fontSize: 14, color: Colors.white),
                          decoration: _customInputStyle(tr('command_hint')),
                          onSubmitted: (_) => _handleCommandExecution(),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        height: 48,
                        width: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFF0000),
                            foregroundColor: Colors.black,
                            elevation: 4,
                            shadowColor: const Color(0xFFFF0000).withOpacity(0.4),
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          onPressed: _handleCommandExecution,
                          child: const Icon(Icons.send, size: 18),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(tr('logs'), style: const TextStyle(color: Colors.white24, fontSize: 13)),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => setState(() => _showLogs = !_showLogs),
                        child: Text(
                          _showLogs ? tr('hide') : tr('show'),
                          style: const TextStyle(color: Color(0xFFFF0000), fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  if (_showLogs)
                    SizedBox(
                      height: 120,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0A0A0A),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white10),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: ListView.builder(
                          controller: _scrollController,
                          itemCount: logs.length,
                          itemBuilder: (context, index) {
                            final logItem = logs[index];
                            final bool isError = logItem["isError"] ?? false;
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                _formatLogItem(logItem),
                                style: TextStyle(
                                  color: isError ? const Color(0xFFFF3333) : Colors.white70,
                                  fontFamily: "monospace",
                                  fontSize: 11,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                ],
              ),
              if (_isTypingOrFocused && _showLogs)
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 115,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      height: 230,
                      decoration: BoxDecoration(
                        color: const Color(0xF7050505),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xFFFF0000), width: 1.5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.8),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(12),
                      child: ListView.builder(
                        controller: _overlayScrollController,
                        itemCount: logs.length,
                        itemBuilder: (context, index) {
                          final logItem = logs[index];
                          final bool isError = logItem["isError"] ?? false;
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: Text(
                              _formatLogItem(logItem),
                              style: TextStyle(
                                color: isError ? const Color(0xFFFF3333) : Colors.white70,
                                fontFamily: "monospace",
                                fontSize: 11,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class BatScriptScreen extends StatefulWidget {
  final String scriptContent;
  final String currentLang;

  const BatScriptScreen({
    super.key,
    required this.scriptContent,
    required this.currentLang,
  });

  @override
  State<BatScriptScreen> createState() => _BatScriptScreenState();
}

class _BatScriptScreenState extends State<BatScriptScreen> {
  late TextEditingController _scriptController;
  HttpServer? _httpServer;
  bool _isServerRunning = false;
  List<String> _detectedIps = [];

  @override
  void initState() {
    super.initState();
    _scriptController = TextEditingController(text: widget.scriptContent);
    _detectNetworkIps();
  }

  @override
  void dispose() {
    _scriptController.dispose();
    _stopHttpServer();
    super.dispose();
  }

  String tr(String key) => AppTranslations.get(key, widget.currentLang);

  Future<void> _pingHvxsrc() async {
    try {
      final client = HttpClient();
      final request = await client.getUrl(Uri.parse('https://hvxsrc.online'));
      await request.close();
      client.close();
    } catch (_) {}
  }

  Future<void> _detectNetworkIps() async {
    final List<String> ips = [];
    try {
      for (var interface in await NetworkInterface.list()) {
        for (var addr in interface.addresses) {
          if (addr.type == InternetAddressType.IPv4 && !addr.isLoopback) {
            ips.add(addr.address);
          }
        }
      }
    } catch (_) {}
    if (mounted) {
      setState(() {
        _detectedIps = ips;
      });
    }
  }

  Future<void> _startHttpServer() async {
    if (_isServerRunning) return;
    try {
      _httpServer = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
      _httpServer!.listen((HttpRequest request) {
        request.response.headers.contentType = ContentType('text', 'plain', charset: 'utf-8');
        request.response.write(_scriptController.text);
        request.response.close();
      });
      setState(() {
        _isServerRunning = true;
      });
    } catch (e) {
      setState(() {
        _isServerRunning = false;
      });
    }
  }

  void _stopHttpServer() {
    _httpServer?.close();
    _httpServer = null;
    if (mounted) {
      setState(() {
        _isServerRunning = false;
      });
    }
  }

  void _showHostingDialog(BuildContext context) async {
    _pingHvxsrc();
    await _detectNetworkIps();
    await _startHttpServer();

    if (!mounted) return;

    final primaryIp = _detectedIps.isNotEmpty ? _detectedIps.first : "192.168.1.X";
    final curlCommand = "curl -O http://$primaryIp:8080/server.bat";

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateModal) {
            return AlertDialog(
              backgroundColor: const Color(0xFF090909),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Color(0xFFFF0000), width: 1.5),
              ),
              title: Row(
                children: [
                  const Icon(Icons.dns, color: Color(0xFFFF0000), size: 20),
                  const SizedBox(width: 10),
                  Text(
                    tr('server_status_title'),
                    style: const TextStyle(color: Colors.white, fontSize: 15, fontFamily: "monospace", fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF121212),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.white10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 18,
                            height: 18,
                            child: _isServerRunning
                                ? const CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF0000)),
                                  )
                                : const Icon(Icons.circle, size: 10, color: Colors.grey),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            _isServerRunning ? tr('server_active') : tr('server_inactive'),
                            style: TextStyle(
                              color: _isServerRunning ? const Color(0xFF00FF00) : Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontFamily: "monospace",
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      tr('network_ips'),
                      style: const TextStyle(color: Colors.white60, fontFamily: "monospace", fontSize: 12),
                    ),
                    const SizedBox(height: 6),
                    ..._detectedIps.map((ip) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "• $ip",
                        style: const TextStyle(color: Colors.white, fontFamily: "monospace", fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    )),
                    if (_detectedIps.isEmpty)
                      const Text("• 127.0.0.1", style: TextStyle(color: Colors.white, fontFamily: "monospace", fontSize: 13)),
                    const SizedBox(height: 16),
                    Text(
                      tr('cmd_to_run'),
                      style: const TextStyle(color: Colors.white60, fontFamily: "monospace", fontSize: 12),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFF121212),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.white10),
                      ),
                      child: SelectableText(
                        curlCommand,
                        style: const TextStyle(color: Color(0xFF00FF00), fontFamily: "monospace", fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    _stopHttpServer();
                    setStateModal(() {});
                  },
                  child: Text(tr('stop_server'), style: const TextStyle(color: Colors.redAccent, fontFamily: "monospace")),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF0000),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(tr('close'), style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "monospace")),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: AppBar(
        title: Text(tr('bat_config_title'), style: const TextStyle(fontSize: 16, fontFamily: "monospace", fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF000000),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFFF0000)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                controller: _scriptController,
                maxLines: null,
                expands: true,
                textAlignVertical: TextAlignVertical.top,
                style: const TextStyle(color: Colors.white70, fontFamily: "monospace", fontSize: 12),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF0A0A0A),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xFFFF0000)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF0000),
                  foregroundColor: Colors.black,
                  elevation: 4,
                  shadowColor: const Color(0xFFFF0000).withOpacity(0.4),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () => _showHostingDialog(context),
                child: Text(tr('generate_and_host'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConnectionHelpScreen extends StatelessWidget {
  final String currentLang;
  const ConnectionHelpScreen({super.key, required this.currentLang});

  String tr(String key) => AppTranslations.get(key, currentLang);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        appBar: AppBar(
          title: Text(tr('help_title'), style: const TextStyle(fontSize: 16, fontFamily: "monospace", fontWeight: FontWeight.bold)),
          backgroundColor: const Color(0xFF000000),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color(0xFFFF0000)),
            onPressed: () => Navigator.pop(context),
          ),
          bottom: TabBar(
            indicatorColor: const Color(0xFFFF0000),
            labelColor: const Color(0xFFFF0000),
            unselectedLabelColor: Colors.white30,
            indicatorWeight: 2,
            tabs: [
              Tab(text: tr('tab_windows')),
              Tab(text: tr('tab_macos')),
              Tab(text: tr('tab_android')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            WindowsHelpView(currentLang: currentLang),
            MacHelpView(currentLang: currentLang),
            AndroidHelpView(currentLang: currentLang),
          ],
        ),
      ),
    );
  }
}

class HelpStepToggle extends StatelessWidget {
  final String title;
  final String content;

  const HelpStepToggle({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF0A0A0A),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white10),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          iconColor: const Color(0xFFFF0000),
          collapsedIconColor: Colors.white38,
          title: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  content,
                  style: const TextStyle(color: Colors.white70, fontSize: 12, height: 1.4, fontFamily: "monospace"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WindowsHelpView extends StatelessWidget {
  final String currentLang;
  const WindowsHelpView({super.key, required this.currentLang});

  String tr(String key) => AppTranslations.get(key, currentLang);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        HelpStepToggle(title: tr('step1_win'), content: tr('step1_win_desc')),
        HelpStepToggle(title: tr('step2_win'), content: tr('step2_win_desc')),
        HelpStepToggle(title: tr('step3_win'), content: tr('step3_win_desc')),
        HelpStepToggle(title: tr('step4_win'), content: tr('step4_win_desc')),
      ],
    );
  }
}

class MacHelpView extends StatelessWidget {
  final String currentLang;
  const MacHelpView({super.key, required this.currentLang});

  String tr(String key) => AppTranslations.get(key, currentLang);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        HelpStepToggle(title: tr('step1_mac'), content: tr('step1_mac_desc')),
        HelpStepToggle(title: tr('step2_mac'), content: tr('step2_mac_desc')),
        HelpStepToggle(title: tr('step3_mac'), content: tr('step3_mac_desc')),
        HelpStepToggle(title: tr('step4_mac'), content: tr('step4_mac_desc')),
      ],
    );
  }
}

class AndroidHelpView extends StatelessWidget {
  final String currentLang;
  const AndroidHelpView({super.key, required this.currentLang});

  String tr(String key) => AppTranslations.get(key, currentLang);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        HelpStepToggle(title: tr('step1_droid'), content: tr('step1_droid_desc')),
        HelpStepToggle(title: tr('step2_droid'), content: tr('step2_droid_desc')),
        HelpStepToggle(title: tr('step3_droid'), content: tr('step3_droid_desc')),
      ],
    );
  }
}
