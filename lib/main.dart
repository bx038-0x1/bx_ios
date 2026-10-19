import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
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
      'copy_script': 'copier le script',
      'how_to_retrieve': 'Comment recuperer le fichier ?',
      'help_title': 'Guide de connexion et aide',
      'tab_windows': 'windows',
      'tab_macos': 'macos',
      'tab_android': 'android',
      'tab_contact': 'contact @',
      'maj_title': 'M.A.J. & News',
      'v1_title': 'Version 1.0.0',
      'v1_desc': '- Modification du bouton de connexion.\n- Ajout édition pour le script server.bat .',
      'v2_title': 'Version 1.0.1 / News',
      'v2_desc': '- Nouvelles langues bientôt disponibles: (anglais, allemand, portugais).',
      'v3_title': 'Version 1.0.2 / News',
      'v3_desc': '- Ajout du système multilingue.\n- Console adaptative et popup de récupération .bat.',
      'retrieval_title': 'Comment recuperer le fichier ?',
      'retrieval_content': 'Voici des sites gratuits sans inscription pour partager et recuperer votre script .bat sur Windows :\n\n- https://paste.ee\n- https://0x0.st\n- https://file.io\n- https://gist.github.com\n- https://pastebin.com',
      'step1_win': 'Étape 1 : creer un dossier securisé',
      'step1_win_desc': 'Pour éviter que Windows Defender ou votre pare-feu bloque l\'application, évitez le dossier /Downloads.\n\nCréez un dossier neuf à la racine de votre système, par exemple : C:\\BXRemote.',
      'step2_win': 'Étape 2 : autorisations du dossier',
      'step2_win_desc': 'Faites un clic droit sur votre dossier créé -> Propriétés -> Sécurité.\n\nVérifiez que votre session utilisateur possède le contrôle total sur ce dossier afin d\'exécuter des fichiers sans contraintes.',
      'step3_win': 'Étape 3 : deploiement du script .bat',
      'step3_win_desc': '1. Copiez le script .bat depuis l\'application.\n2. Dans votre dossier sécurisé, créez un document texte nommé \'serveur.bat\'.\n3. Collez le code dedans et sauvegardez.\n4. Double-cliquez pour exécuter l\'écouteur sur le port 55555.',
      'step4_win': 'Étape 4 : recuperer l adresse ip locale',
      'step4_win_desc': 'Ouvrez l\'invite de commande (cmd) sur votre PC, tapez \'ipconfig\' et repérez la ligne \'Adresse IPv4\' (ex: 192.168.1.35).\n\nEntrez cette IP et le port 55555 dans l\'application pour initier la liaison.',
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
      'contact_title': 'Envoyer un commentaire ou signaler un problème',
      'contact_hint': 'Tapez votre message ici...',
      'contact_send': 'Envoyer le message',
      'contact_success': 'Message envoyé avec succès !',
      'contact_error': 'Erreur lors de l\'envoi du message.',
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
      'copy_script': 'copy script',
      'how_to_retrieve': 'How to retrieve file?',
      'help_title': 'Connection Guide & Help',
      'tab_windows': 'windows',
      'tab_macos': 'macos',
      'tab_android': 'android',
      'tab_contact': 'contact @',
      'maj_title': 'Updates & News',
      'v1_title': 'Version 1.0.0',
      'v1_desc': '- Updated connection button.\n- Added server.bat script editor.',
      'v2_title': 'Version 1.0.1 / News',
      'v2_desc': '- New languages coming soon: (English, German, Portuguese).',
      'v3_title': 'Version 1.0.2 / News',
      'v3_desc': '- Added multilingual system.\n- Adaptive console and .bat retrieval popup.',
      'retrieval_title': 'How to retrieve file?',
      'retrieval_content': 'Here are free no-login sites to share and retrieve your .bat script on Windows:\n\n- https://paste.ee\n- https://0x0.st\n- https://file.io\n- https://gist.github.com\n- https://pastebin.com',
      'step1_win': 'Step 1: create a secure folder',
      'step1_win_desc': 'To avoid Windows Defender or firewall blocking, avoid the /Downloads folder.\n\nCreate a new folder at system root, e.g., C:\\BXRemote.',
      'step2_win': 'Step 2: folder permissions',
      'step2_win_desc': 'Right click folder -> Properties -> Security.\n\nEnsure your user session has full control.',
      'step3_win': 'Step 3: deploy .bat script',
      'step3_win_desc': '1. Copy bat script.\n2. Create server.bat in your secure folder.\n3. Paste code and save.\n4. Double click to run listener on port 55555.',
      'step4_win': 'Step 4: retrieve local IP',
      'step4_win_desc': 'Open cmd, type \'ipconfig\' and find IPv4 Address (e.g. 192.168.1.35).\n\nEnter this IP and port 55555.',
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
      'contact_title': 'Send a comment or report an issue',
      'contact_hint': 'Type your message here...',
      'contact_send': 'Send message',
      'contact_success': 'Message sent successfully!',
      'contact_error': 'Error sending message.',
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
      'copy_script': 'copiar script',
      'how_to_retrieve': '¿Cómo recuperar archivo?',
      'help_title': 'Guía de conexión',
      'tab_windows': 'windows',
      'tab_macos': 'macos',
      'tab_android': 'android',
      'tab_contact': 'contacto @',
      'maj_title': 'Actualizaciones',
      'v1_title': 'Versión 1.0.0',
      'v1_desc': '- Botón de conexión actualizado.',
      'v2_title': 'Versión 1.0.1 / News',
      'v2_desc': '- Nuevos idiomas próximamente.',
      'v3_title': 'Versión 1.0.2 / News',
      'v3_desc': '- Sistema multilingüe añadido.\n- Consola adaptativa y popup de recuperación .bat.',
      'retrieval_title': '¿Cómo recuperar archivo?',
      'retrieval_content': 'Sitios gratuitos sin registro:\n\n- https://paste.ee\n- https://0x0.st\n- https://file.io\n- https://gist.github.com\n- https://pastebin.com',
      'step1_win': 'Paso 1: carpeta segura',
      'step1_win_desc': 'Evite /Downloads. Cree C:\\BXRemote.',
      'step2_win': 'Paso 2: permisos',
      'step2_win_desc': 'Control total requerido.',
      'step3_win': 'Paso 3: script .bat',
      'step3_win_desc': 'Cree serveur.bat y ejecute.',
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
      'contact_title': 'Enviar un comentario o reportar un problema',
      'contact_hint': 'Escribe tu mensaje aquí...',
      'contact_send': 'Enviar mensaje',
      'contact_success': '¡Mensaje enviado con éxito!',
      'contact_error': 'Error al enviar el mensaje.',
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
      'copy_script': 'Skript kopieren',
      'how_to_retrieve': 'Datei abrufen?',
      'help_title': 'Verbindungsanleitung',
      'tab_windows': 'windows',
      'tab_macos': 'macos',
      'tab_android': 'android',
      'tab_contact': 'kontakt @',
      'maj_title': 'Updates',
      'v1_title': 'Version 1.0.0',
      'v1_desc': '- Aktualisiert.',
      'v2_title': 'Version 1.0.1',
      'v2_desc': '- Neue Sprachen bald verfügbar.',
      'v3_title': 'Version 1.0.2 / News',
      'v3_desc': '- Mehrsprachiges System hinzugefügt.\n- Adaptive Konsole und .bat-Abruf-Popup.',
      'retrieval_title': 'Datei abrufen?',
      'retrieval_content': 'Kostenlose Dienste:\n\n- https://paste.ee\n- https://0x0.st\n- https://file.io\n- https://gist.github.com\n- https://pastebin.com',
      'step1_win': 'Schritt 1: Ordner',
      'step1_win_desc': 'C:\\BXRemote erstellen.',
      'step2_win': 'Schritt 2: Rechte',
      'step2_win_desc': 'Vollzugriff.',
      'step3_win': 'Schritt 3: Skript',
      'step3_win_desc': 'serveur.bat ausführen.',
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
      'contact_title': 'Kommentar senden oder Problem melden',
      'contact_hint': 'Geben Sie Ihre Nachricht hier ein...',
      'contact_send': 'Nachricht senden',
      'contact_success': 'Nachricht erfolgreich gesendet!',
      'contact_error': 'Fehler beim Senden der Nachricht.',
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
      'copy_script': 'copiar script',
      'how_to_retrieve': 'Como recuperar arquivo?',
      'help_title': 'Guia de conexão',
      'tab_windows': 'windows',
      'tab_macos': 'macos',
      'tab_android': 'android',
      'tab_contact': 'contato @',
      'maj_title': 'Atualizações',
      'v1_title': 'Versão 1.0.0',
      'v1_desc': '- Atualizado.',
      'v2_title': 'Versão 1.0.1',
      'v2_desc': '- Novos idiomas em breve.',
      'v3_title': 'Versão 1.0.2 / News',
      'v3_desc': '- Adicionado sistema multilíngue.\n- Console adaptativa e popup de recuperação .bat.',
      'retrieval_title': 'Como recuperar arquivo?',
      'retrieval_content': 'Sites gratuitos:\n\n- https://paste.ee\n- https://0x0.st\n- https://file.io\n- https://gist.github.com\n- https://pastebin.com',
      'step1_win': 'Passo 1: Pasta',
      'step1_win_desc': 'Criar C:\\BXRemote.',
      'step2_win': 'Passo 2: Permissões',
      'step2_win_desc': 'Controle total.',
      'step3_win': 'Passo 3: Script',
      'step3_win_desc': 'Executar serveur.bat.',
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
      'contact_title': 'Enviar comentário ou relatar problema',
      'contact_hint': 'Digite sua mensagem aqui...',
      'contact_send': 'Enviar mensagem',
      'contact_success': 'Mensagem enviada com sucesso!',
      'contact_error': 'Erro ao enviar mensagem.',
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
    _socket?.destroy();
    super.dispose();
  }

  String tr(String key) => AppTranslations.get(key, widget.currentLang);

  void _addLog(String message, {bool isError = false}) {
    if (!mounted) return;
    setState(() {
      logs.add({
        "text": "[${DateTime.now().toString().substring(11, 19)}] ${message.toLowerCase()}",
        "isError": isError
      });
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _navigateToBatScript() async {
    final logMessage = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (context) => BatScriptScreen(
          scriptContent: _batScriptContent,
          currentLang: widget.currentLang,
        ),
      ),
    );
    
    if (logMessage != null) {
      _addLog(logMessage);
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
      _addLog("erreur : ip ou port invalide", isError: true);
      return;
    }

    setState(() {
      _isLoading = true;
    });
    _addLog("connexion a $ip:$port...");

    try {
      _socket = await Socket.connect(ip, port, timeout: const Duration(seconds: 4));
      
      setState(() {
        _isConnected = true;
        _isLoading = false;
      });
      _addLog("connexion etablie");

      _socket!.listen(
        (List<int> data) {
          final response = utf8.decode(data).trim();
          _addLog(response);
        },
        onError: (error) {
          _addLog("erreur reseau : $error", isError: true);
          _disconnect();
        },
        onDone: () {
          _addLog("connexion interrompue par la cible");
          _disconnect();
        },
      );
    } catch (e) {
      setState(() {
        _isLoading = false;
        _isConnected = false;
      });
      _addLog("echec : cible introuvable ($e)", isError: true);
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
    _addLog("deconnecter");
  }

  void _handleCommandExecution() {
    final input = _commandController.text.trim();
    if (input.isEmpty) return;

    _commandController.clear();

    if (_socket == null) {
      _addLog("erreur : aucun appareil connecter", isError: true);
      return;
    }
    try {
      _socket!.write("$input\n");
      _addLog("> $input");
    } catch (e) {
      _addLog("erreur d'envoi : $e", isError: true);
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
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Colors.white10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Color(0xFFFF0000), width: 1.5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(tr('app_title'), style: const TextStyle(fontSize: 18, letterSpacing: 1)),
        backgroundColor: const Color(0xFF000000),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: widget.currentLang,
                dropdownColor: const Color(0xFF111111),
                icon: const Icon(Icons.language, color: Color(0xFFFF0000), size: 18),
                items: const [
                  DropdownMenuItem(value: 'fr', child: Text('FR', style: TextStyle(color: Colors.white, fontSize: 12))),
                  DropdownMenuItem(value: 'en', child: Text('EN', style: TextStyle(color: Colors.white, fontSize: 12))),
                  DropdownMenuItem(value: 'es', child: Text('ES', style: TextStyle(color: Colors.white, fontSize: 12))),
                  DropdownMenuItem(value: 'de', child: Text('DE', style: TextStyle(color: Colors.white, fontSize: 12))),
                  DropdownMenuItem(value: 'pt', child: Text('PT', style: TextStyle(color: Colors.white, fontSize: 12))),
                ],
                onChanged: (val) {
                  if (val != null) widget.onLangChanged(val);
                },
              ),
            ),
          ),
          TextButton(
            onPressed: _navigateToBatScript,
            child: Text(tr('copy_bat'), style: const TextStyle(color: Color(0xFFFF0000), fontSize: 13)),
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
                        child: TextField(
                          controller: _portController,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(fontSize: 16, color: Colors.white),
                          decoration: _customInputStyle(tr('port')),
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
                              backgroundColor: const Color(0xFF050505),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: const BorderSide(color: Colors.white10),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                width: double.infinity,
                                height: 350,
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
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFF0000),
                            foregroundColor: Colors.black,
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          ),
                          onPressed: _handleCommandExecution,
                          child: const Icon(Icons.arrow_forward, size: 19),
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
                          style: const TextStyle(color: Color(0xFFFF0000), fontSize: 11),
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
                          color: const Color(0xFF050505),
                          borderRadius: BorderRadius.circular(4),
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
                                logItem["text"] ?? "",
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
                  bottom: 70,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        color: const Color(0xEE050505),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xFFFF0000), width: 1),
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
                              logItem["text"] ?? "",
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

  @override
  void initState() {
    super.initState();
    _scriptController = TextEditingController(text: widget.scriptContent);
  }

  @override
  void dispose() {
    _scriptController.dispose();
    super.dispose();
  }

  String tr(String key) => AppTranslations.get(key, widget.currentLang);

  void _showRetrievalDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF050505),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: const BorderSide(color: Colors.white10),
          ),
          title: Text(
            tr('retrieval_title'),
            style: const TextStyle(color: Color(0xFFFF0000), fontSize: 16, fontFamily: "monospace"),
          ),
          content: SingleChildScrollView(
            child: Text(
              tr('retrieval_content'),
              style: const TextStyle(color: Colors.white70, fontSize: 13, height: 1.5, fontFamily: "monospace"),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK", style: TextStyle(color: Color(0xFFFF0000))),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: AppBar(
        title: Text(tr('bat_config_title'), style: const TextStyle(fontSize: 16, fontFamily: "monospace")),
        backgroundColor: const Color(0xFF000000),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFFF0000)),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Color(0xFFFF0000)),
            onPressed: () => _showRetrievalDialog(context),
            tooltip: tr('how_to_retrieve'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFFFF0000),
                    side: const BorderSide(color: Color(0xFFFF0000)),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  onPressed: () => _showRetrievalDialog(context),
                  icon: const Icon(Icons.download, size: 18),
                  label: Text(tr('how_to_retrieve'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                ),
              ),
            ),
            Expanded(
              child: TextField(
                controller: _scriptController,
                maxLines: null,
                expands: true,
                textAlignVertical: TextAlignVertical.top,
                style: const TextStyle(color: Colors.white70, fontFamily: "monospace", fontSize: 12),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF050505),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Colors.white10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
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
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: _scriptController.text));
                  Navigator.pop(context, "script .bat personnalisé copié.");
                },
                child: Text(tr('copy_script'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
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
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        appBar: AppBar(
          title: Text(tr('help_title'), style: const TextStyle(fontSize: 16, fontFamily: "monospace")),
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
              Tab(text: tr('tab_contact')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            WindowsHelpView(currentLang: currentLang),
            MacHelpView(currentLang: currentLang),
            AndroidHelpView(currentLang: currentLang),
            ContactView(currentLang: currentLang),
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
        color: const Color(0xFF050505),
        borderRadius: BorderRadius.circular(4),
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

class ContactView extends StatefulWidget {
  final String currentLang;
  const ContactView({super.key, required this.currentLang});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  final TextEditingController _contactController = TextEditingController();
  bool _isSending = false;

  @override
  void dispose() {
    _contactController.dispose();
    super.dispose();
  }

  String tr(String key) => AppTranslations.get(key, widget.currentLang);

  void _sendContactMessage() async {
    final text = _contactController.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _isSending = true;
    });

    final success = await sendDiscordWebhook(text);

    if (!mounted) return;

    setState(() {
      _isSending = false;
    });

    if (success) {
      _contactController.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(tr('contact_success')),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(tr('contact_error')),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          tr('contact_title'),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: "monospace",
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _contactController,
          maxLines: 5,
          style: const TextStyle(color: Colors.white, fontSize: 13, fontFamily: "monospace"),
          decoration: InputDecoration(
            hintText: tr('contact_hint'),
            hintStyle: const TextStyle(color: Colors.white24, fontSize: 13),
            filled: true,
            fillColor: const Color(0xFF050505),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.white10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Color(0xFFFF0000)),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 48,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF0000),
              foregroundColor: Colors.black,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            ),
            onPressed: _isSending ? null : _sendContactMessage,
            child: _isSending
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    tr('contact_send'),
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
          ),
        ),
      ],
    );
  }
}
