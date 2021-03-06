
// Generated file. Do not edit.

import 'package:flutter/material.dart';
import 'package:fast_i18n/fast_i18n.dart';

const String _baseLocale = 'en';
String _locale = _baseLocale;
Map<String, Strings> _strings = {
	'en': Strings.instance,
	'es': StringsEs.instance,
	'fr': StringsFr.instance,
	'pt': StringsPt.instance,
};

/// Method A: Simple
///
/// Widgets using this method will not be updated after widget creation when locale changes.
/// Translation happens during initialization of the widget (method call of t)
///
/// Usage:
/// String translated = t.someKey.anotherKey;
Strings get t {
	return _strings[_locale];
}

/// Method B: Advanced
///
/// Reacts on locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // get t variable
/// String translated = t.someKey.anotherKey; // use t variable
class Translations {
	Translations._(); // no constructor

	static Strings of(BuildContext context) {
		return context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>().translations;
	}
}

class LocaleSettings {
	LocaleSettings._(); // no constructor

	/// use the locale of the device, fallback to default locale
	static Future<void> useDeviceLocale() async {
		_locale = await FastI18n.findDeviceLocale(_strings.keys.toList(), _baseLocale);

		if (_translationProviderKey.currentState != null)
			_translationProviderKey.currentState.setLocale(_locale);
	}

	/// set the locale, fallback to default locale
	static void setLocale(String locale) {
		_locale = FastI18n.selectLocale(locale, _strings.keys.toList(), _baseLocale);

		if (_translationProviderKey.currentState != null)
			_translationProviderKey.currentState.setLocale(_locale);
	}

	/// get the current locale
	static String get currentLocale {
		return _locale;
	}

	/// get the base locale
	static String get baseLocale {
		return _baseLocale;
	}

	/// get the supported locales
	static List<String> get locales {
		return _strings.keys.toList();
	}
}

GlobalKey<_TranslationProviderState> _translationProviderKey = new GlobalKey<_TranslationProviderState>();
class TranslationProvider extends StatefulWidget {

	final Widget child;
	TranslationProvider({@required this.child}) : super(key: _translationProviderKey);

	@override
	_TranslationProviderState createState() => _TranslationProviderState();
}

class _TranslationProviderState extends State<TranslationProvider> {
	String locale = _locale;

	void setLocale(String newLocale) {
		setState(() {
			locale = newLocale;
		});
	}

	@override
	Widget build(BuildContext context) {
		return _InheritedLocaleData(
			translations: _strings[locale],
			child: widget.child,
		);
	}
}

class _InheritedLocaleData extends InheritedWidget {
	final Strings translations;
	_InheritedLocaleData({this.translations, Widget child}) : super(child: child);

	@override
	bool updateShouldNotify(_InheritedLocaleData oldWidget) {
		return oldWidget.translations != translations;
	}
}

// translations

class Strings {
	static Strings _instance = Strings();
	static Strings get instance => _instance;

	String get appname => 'MyChurch App';
	String get selectlanguage => 'Select Language';
	String get chooseapplanguage => 'Choose App Language';
	String get nightmode => 'Night Mode';
	String get initializingapp => 'initializing...';
	String get home => 'Home';
	String get branches => 'Branches';
	String get inbox => 'Inbox';
	String get downloads => 'Downloads';
	String get settings => 'Settings';
	String get events => 'Events';
	String get myplaylists => 'My Playlists';
	String get website => 'Website';
	String get hymns => 'Hymns';
	String get articles => 'Articles';
	String get notes => 'Notes';
	String get donate => 'Donate';
	String get savenotetitle => 'Note Title';
	String get nonotesfound => 'No notes found';
	String get newnote => 'New';
	String get deletenote => 'Delete Note';
	String get deletenotehint => 'Do you want to delete this note? This action cannot be reversed.';
	String get bookmarks => 'Bookmarks';
	String get socialplatforms => 'Social Platforms';
	List<String> get onboardingpagetitles => [
		'Welcome to MyChurch',
		'Packed with Features',
		'Audio, Video \n and Live Streaming',
		'Create Account',
	];
	List<String> get onboardingpagehints => [
		'Extend beyond the Sunday mornings &amp; the four walls of your church. Everything you need to communicate and engage with a mobile-focused world.',
		'We have brought together all of the top features that your church app must have. Events, Devotionals, Notifications, Notes and multi-version bible.',
		'Allow users across the globe watch videos, listen to audio messages and watch live streams of your church services.',
		'Start your journey to a never-ending worship experience.',
	];
	String get next => 'NEXT';
	String get done => 'Get Started';
	String get quitapp => 'Quit App!';
	String get quitappwarning => 'Do you wish to close the app?';
	String get quitappaudiowarning => 'You are currently playing an audio, quitting the app will stop the audio playback. If you do not wish to stop playback, just minimize the app with the center button or click the Ok button to quit app now.';
	String get ok => 'Ok';
	String get retry => 'RETRY';
	String get oops => 'Ooops!';
	String get save => 'Save';
	String get cancel => 'Cancel';
	String get error => 'Error';
	String get success => 'Success';
	String get skip => 'Skip';
	String get skiplogin => 'Skip Login';
	String get skipregister => 'Skip Registration';
	String get dataloaderror => 'Could not load requested data at the moment, check your data connection and click to retry.';
	String get suggestedforyou => 'Suggested for you';
	String get videomessages => 'Video Messages';
	String get audiomessages => 'Audio Messages';
	String get devotionals => 'Devotionals';
	String get categories => 'Categories';
	String get category => 'Category';
	String get videos => 'Videos';
	String get audios => 'Audios';
	String get biblebooks => 'Bible';
	String get audiobible => 'Audio Bible';
	String get livestreams => 'Livestreams';
	String get radio => 'Radio';
	String get allitems => 'All Items';
	String get emptyplaylist => 'No Playlists';
	String get notsupported => 'Not Supported';
	String get cleanupresources => 'Cleaning up resources';
	String get grantstoragepermission => 'Please grant accessing storage permission to continue';
	String get sharefiletitle => 'Watch or Listen to ';
	String get sharefilebody => 'Via MyChurch App, Download now at ';
	String get sharetext => 'Enjoy unlimited Audio & Video streaming';
	String get sharetexthint => 'Join the Video and Audio streaming platform that lets you watch and listen to millions of files from around the world. Download now at';
	String get download => 'Download';
	String get addplaylist => 'Add to playlist';
	String get bookmark => 'Bookmark';
	String get unbookmark => 'UnBookmark';
	String get share => 'Share';
	String get deletemedia => 'Delete File';
	String get deletemediahint => 'Do you wish to delete this downloaded file? This action cannot be undone.';
	String get searchhint => 'Search Audio & Video Messages';
	String get performingsearch => 'Searching Audios and Videos';
	String get nosearchresult => 'No results Found';
	String get nosearchresulthint => 'Try input more general keyword';
	String get addtoplaylist => 'Add to playlist';
	String get newplaylist => 'New playlist';
	String get playlistitm => 'Playlist';
	String get mediaaddedtoplaylist => 'Media added to playlist.';
	String get mediaremovedfromplaylist => 'Media removed from playlist';
	String get clearplaylistmedias => 'Clear All Media';
	String get deletePlayList => 'Delete Playlist';
	String get clearplaylistmediashint => 'Go ahead and remove all media from this playlist?';
	String get deletePlayListhint => 'Go ahead and delete this playlist and clear all media?';
	String get comments => 'Comments';
	String get replies => 'Replies';
	String get reply => 'Reply';
	String get logintoaddcomment => 'Login to add a comment';
	String get logintoreply => 'Login to reply';
	String get writeamessage => 'Write a message...';
	String get nocomments => 'No Comments found \nclick to retry';
	String get errormakingcomments => 'Cannot process commenting at the moment..';
	String get errordeletingcomments => 'Cannot delete this comment at the moment..';
	String get erroreditingcomments => 'Cannot edit this comment at the moment..';
	String get errorloadingmorecomments => 'Cannot load more comments at the moment..';
	String get deletingcomment => 'Deleting comment';
	String get editingcomment => 'Editing comment';
	String get deletecommentalert => 'Delete Comment';
	String get editcommentalert => 'Edit Comment';
	String get deletecommentalerttext => 'Do you wish to delete this comment? This action cannot be undone';
	String get loadmore => 'load more';
	String get messages => 'Messages';
	String get guestuser => 'Guest User';
	String get fullname => 'Full Name';
	String get emailaddress => 'Email Address';
	String get password => 'Password';
	String get repeatpassword => 'Repeat Password';
	String get register => 'Register';
	String get login => 'Login';
	String get logout => 'Logout';
	String get logoutfromapp => 'Logout from app?';
	String get logoutfromapphint => 'You wont be able to like or comment on articles and videos if you are not logged in.';
	String get gotologin => 'Go to Login';
	String get resetpassword => 'Reset Password';
	String get logintoaccount => 'Already have an account? Login';
	String get emptyfielderrorhint => 'You need to fill all the fields';
	String get invalidemailerrorhint => 'You need to enter a valid email address';
	String get passwordsdontmatch => 'Passwords dont match';
	String get processingpleasewait => 'Processing, Please wait...';
	String get createaccount => 'Create an account';
	String get forgotpassword => 'Forgot Password?';
	String get orloginwith => 'Or Login With';
	String get facebook => 'Facebook';
	String get google => 'Google';
	String get moreoptions => 'More Options';
	String get about => 'About Us';
	String get privacy => 'Privacy Policy';
	String get terms => 'App Terms';
	String get rate => 'Rate App';
	String get version => 'Version';
	String get pulluploadmore => 'pull up load';
	String get loadfailedretry => 'Load Failed!Click retry!';
	String get releaseloadmore => 'release to load more';
	String get nomoredata => 'No more Data';
	String get errorReportingComment => 'Error Reporting Comment';
	String get reportingComment => 'Reporting Comment';
	String get reportcomment => 'Report Options';
	List<String> get reportCommentsList => [
		'Unwanted commercial content or spam',
		'Pornography or sexual explicit material',
		'Hate speech or graphic violence',
		'Harassment or bullying',
	];
	String get bookmarksMedia => 'My Bookmarks';
	String get noitemstodisplay => 'No Items To Display';
	String get loginrequired => 'Login Required';
	String get loginrequiredhint => 'To subscribe on this platform, you need to be logged in. Create a free account now or log in to your existing account.';
	String get subscriptions => 'App Subscriptions';
	String get subscribe => 'SUBSCRIBE';
	String get subscribehint => 'Subscription Required';
	String get playsubscriptionrequiredhint => 'You need to subscribe before you can listen to or watch this media.';
	String get previewsubscriptionrequiredhint => 'You have reached the allowed preview duration for this media. You need to subscribe to continue listening or watching this media.';
	String get copiedtoclipboard => 'Copied to clipboard';
	String get downloadbible => 'Download Bible';
	String get downloadversion => 'Download';
	String get downloading => 'Downloading';
	String get failedtodownload => 'Failed to download';
	String get pleaseclicktoretry => 'Please click to retry.';
	String get of => 'Of';
	String get nobibleversionshint => 'There is no bible data to display, click on the button below to download atleast one bible version.';
	String get downloaded => 'Downloaded';
	String get enteremailaddresstoresetpassword => 'Enter your email to reset your password';
	String get backtologin => 'BACK TO LOGIN';
	String get signintocontinue => 'Sign in to continue';
	String get signin => 'S I G N  I N';
	String get signinforanaccount => 'SIGN UP FOR AN ACCOUNT?';
	String get alreadyhaveanaccount => 'Already have an account?';
	String get updateprofile => 'Update Profile';
	String get updateprofilehint => 'To get started, please update your profile page, this will help us in connecting you with other people';
	String get autoplayvideos => 'AutoPlay Videos';
	String get gosocial => 'Go Social';
	String get searchbible => 'Search Bible';
	String get filtersearchoptions => 'Filter Search Options';
	String get narrowdownsearch => 'Use the filter button below to narrow down search for a more precise result.';
	String get searchbibleversion => 'Search Bible Version';
	String get searchbiblebook => 'Search Bible Book';
	String get search => 'Search';
	String get setBibleBook => 'Set Bible Book';
	String get oldtestament => 'Old Testament';
	String get newtestament => 'New Testament';
	String get limitresults => 'Limit Results';
	String get setfilters => 'Set Filters';
	String get bibletranslator => 'Bible Translator';
	String get chapter => ' Chapter ';
	String get verse => ' Verse ';
	String get translate => 'translate';
	String get bibledownloadinfo => 'Bible Download started, Please do not close this page until the download is done.';
	String get received => 'received';
	String get outoftotal => 'out of total';
	String get set => 'SET';
	String get selectColor => 'Select Color';
	String get switchbibleversion => 'Switch Bible Version';
	String get switchbiblebook => 'Switch Bible Book';
	String get gotosearch => 'Go to Chapter';
	String get changefontsize => 'Change Font Size';
	String get font => 'Font';
	String get readchapter => 'Read Chapter';
	String get showhighlightedverse => 'Show Highlighted Verses';
	String get downloadmoreversions => 'Download more versions';
	String get suggestedusers => 'Suggested users to follow';
	String get unfollow => 'UnFollow';
	String get follow => 'Follow';
	String get searchforpeople => 'Search for people';
	String get viewpost => 'View Post';
	String get viewprofile => 'View Profile';
	String get mypins => 'My Pins';
	String get viewpinnedposts => 'View Pinned Posts';
	String get personal => 'Personal';
	String get update => 'Update';
	String get phonenumber => 'Phone Number';
	String get showmyphonenumber => 'Show my phone number to users';
	String get dateofbirth => 'Date of Birth';
	String get showmyfulldateofbirth => 'Show my full date of birth to people viewing my status';
	String get notifications => 'Notifications';
	String get notifywhenuserfollowsme => 'Notify me when a user follows me';
	String get notifymewhenusercommentsonmypost => 'Notify me when users comment on my post';
	String get notifymewhenuserlikesmypost => 'Notify me when users like my post';
	String get churchsocial => 'Church Social';
	String get shareyourthoughts => 'Share your thoughts';
	String get readmore => '...Read more';
	String get less => ' Less';
	String get couldnotprocess => 'Could not process requested action.';
	String get pleaseselectprofilephoto => 'Please select a profile photo to upload';
	String get pleaseselectprofilecover => 'Please select a cover photo to upload';
	String get updateprofileerrorhint => 'You need to fill your name, date of birth, gender, phone and location before you can proceed.';
	String get gender => 'Gender';
	String get male => 'Male';
	String get female => 'Female';
	String get dob => 'Date Of Birth';
	String get location => 'Current Location';
	String get qualification => 'Qualification';
	String get aboutme => 'About Me';
	String get facebookprofilelink => 'Facebook Profile Link';
	String get twitterprofilelink => 'Twitter Profile Link';
	String get linkdln => 'Linkedln Profile Link';
	String get likes => 'Likes';
	String get likess => 'Like(s)';
	String get pinnedposts => 'My Pinned Posts';
	String get unpinpost => 'Unpin Post';
	String get unpinposthint => 'Do you wish to remove this post from your pinned posts?';
	String get postdetails => 'Post Details';
	String get posts => 'Posts';
	String get followers => 'Followers';
	String get followings => 'Followings';
	String get my => 'My';
	String get edit => 'Edit';
	String get delete => 'Delete';
	String get deletepost => 'Delete Post';
	String get deleteposthint => 'Do you wish to delete this post? Posts can still appear on some users feeds.';
	String get maximumallowedsizehint => 'Maximum allowed file upload reached';
	String get maximumuploadsizehint => 'The selected file exceeds the allowed upload file size limit.';
	String get makeposterror => 'Unable to make post at the moment, please click to retry.';
	String get makepost => 'Make Post';
	String get selectfile => 'Select File';
	String get images => 'Images';
	String get shareYourThoughtsNow => 'Share your thoughts ...';
	String get photoviewer => 'Photo Viewer';
	String get nochatsavailable => 'No Conversations available \n Click the add icon below \nto select users to chat with';
	String get typing => 'Typing...';
	String get photo => 'Photo';
	String get online => 'Online';
	String get offline => 'Offline';
	String get lastseen => 'Last Seen';
	String get deleteselectedhint => 'This action will delete the selected messages.  Please note that this only deletes your side of the conversation, \n the messages will still show on your partners device.';
	String get deleteselected => 'Delete selected';
	String get unabletofetchconversation => 'Unable to Fetch \nyour conversation with \n';
	String get loadmoreconversation => 'Load more conversations';
	String get sendyourfirstmessage => 'Send your first message to \n';
	String get unblock => 'Unblock ';
	String get block => 'Block';
	String get writeyourmessage => 'Write your message...';
	String get clearconversation => 'Clear Conversation';
	String get clearconversationhintone => 'This action will clear all your conversation with ';
	String get clearconversationhinttwo => '.\n  Please note that this only deletes your side of the conversation, the messages will still show on your partners chat.';
	String get facebookloginerror => 'Something went wrong with the login process.\n, Here is the error Facebook gave us';
}

class StringsEs extends Strings {
	static StringsEs _instance = StringsEs();
	static StringsEs get instance => _instance;

	@override String get appname => 'MyChurch App';
	@override String get selectlanguage => 'Seleccione el idioma';
	@override String get chooseapplanguage => 'Elija el idioma de la aplicaci??n';
	@override String get nightmode => 'Modo nocturno';
	@override String get initializingapp => 'inicializando...';
	@override String get home => 'Hogar';
	@override String get branches => 'Ramas';
	@override String get inbox => 'Bandeja de entrada';
	@override String get downloads => 'Descargas';
	@override String get settings => 'Configuraciones';
	@override String get events => 'Eventos';
	@override String get myplaylists => 'Mis listas de reproducci??n';
	@override String get website => 'Sitio web';
	@override String get hymns => 'Himnos';
	@override String get articles => 'Art??culos';
	@override String get notes => 'Notas';
	@override String get donate => 'Donar';
	@override String get savenotetitle => 'T??tulo de la nota';
	@override String get bookmarks => 'Marcadores';
	@override String get socialplatforms => 'Plataformas sociales';
	@override List<String> get onboardingpagetitles => [
		'Bienvenido a mychurch',
		'Repleto de caracter??sticas',
		'Audio, Video \n and Live Streaming',
		'Crear una cuenta',
	];
	@override List<String> get onboardingpagehints => [
		'Extienda m??s all?? de las ma??anas de los domingos y las cuatro paredes de su iglesia. Todo lo que necesita para comunicarse e interactuar con un mundo centrado en dispositivos m??viles.',
		'Hemos reunido todas las funciones principales que debe tener la aplicaci??n de su iglesia. Eventos, devocionales, notificaciones, notas y biblia de m??ltiples versiones.',
		'Permita que los usuarios de todo el mundo vean videos, escuchen mensajes de audio y vean transmisiones en vivo de los servicios de su iglesia.',
		'Comience su viaje hacia una experiencia de adoraci??n sin fin.',
	];
	@override String get next => 'SIGUIENTE';
	@override String get done => 'EMPEZAR';
	@override String get quitapp => 'Salir de la aplicaci??n!';
	@override String get quitappwarning => '??Deseas cerrar la aplicaci??n?';
	@override String get quitappaudiowarning => 'Actualmente est?? reproduciendo un audio, al salir de la aplicaci??n se detendr?? la reproducci??n del audio. Si no desea detener la reproducci??n, simplemente minimice la aplicaci??n con el bot??n central o haga clic en el bot??n Aceptar para salir de la aplicaci??n ahora.';
	@override String get deletenote => 'Borrar nota';
	@override String get deletenotehint => '??Quieres borrar esta nota? Esta acci??n no se puede revertir.';
	@override String get nonotesfound => 'No se encontraron notas';
	@override String get newnote => 'Nuevo';
	@override String get ok => 'Okay';
	@override String get retry => 'REVER';
	@override String get oops => 'Vaya!';
	@override String get save => 'Salvar';
	@override String get cancel => 'Cancelar';
	@override String get error => 'Error';
	@override String get success => '??xito';
	@override String get skip => 'Omitir';
	@override String get skiplogin => 'Omitir inicio de sesi??n';
	@override String get skipregister => 'Evitar el registro';
	@override String get dataloaderror => 'No se pudieron cargar los datos solicitados en este momento, verifique su conexi??n de datos y haga clic para volver a intentarlo.';
	@override String get suggestedforyou => 'Sugerido para ti';
	@override String get devotionals => 'Devocionales';
	@override String get categories => 'Categor??as';
	@override String get category => 'Categor??a';
	@override String get videos => 'Videos';
	@override String get audios => 'Audios';
	@override String get biblebooks => 'Biblia';
	@override String get audiobible => 'Biblia en audio';
	@override String get livestreams => 'Transmisiones en vivo';
	@override String get radio => 'Radio';
	@override String get allitems => 'Todos los art??culos';
	@override String get emptyplaylist => 'Sin listas de reproducci??n';
	@override String get notsupported => 'No soportado';
	@override String get cleanupresources => 'Limpieza de recursos';
	@override String get grantstoragepermission => 'Otorgue permiso de acceso al almacenamiento para continuar';
	@override String get sharefiletitle => 'Mira o escucha ';
	@override String get sharefilebody => 'V??a MyChurch App, Descarga ahora en ';
	@override String get sharetext => 'Disfrute de transmisi??n ilimitada de audio y video';
	@override String get sharetexthint => '??nase a la plataforma de transmisi??n de video y audio que le permite ver y escuchar millones de archivos de todo el mundo. Descarga ahora en';
	@override String get download => 'Descargar';
	@override String get addplaylist => 'Agregar a la lista de reproducci??n';
	@override String get bookmark => 'Marcador';
	@override String get unbookmark => 'Desmarcar';
	@override String get share => 'Compartir';
	@override String get deletemedia => 'Borrar archivo';
	@override String get deletemediahint => '??Desea eliminar este archivo descargado? Esta acci??n no se puede deshacer.';
	@override String get searchhint => 'Buscar mensajes de audio y video';
	@override String get performingsearch => 'B??squeda de audios y videos';
	@override String get nosearchresult => 'No se han encontrado resultados';
	@override String get nosearchresulthint => 'Intente ingresar una palabra clave m??s general';
	@override String get addtoplaylist => 'Agregar a la lista de reproducci??n';
	@override String get newplaylist => 'Nueva lista de reproducci??n';
	@override String get playlistitm => 'Lista de reproducci??n';
	@override String get mediaaddedtoplaylist => 'Medios agregados a la lista de reproducci??n.';
	@override String get mediaremovedfromplaylist => 'Medios eliminados de la lista de reproducci??n';
	@override String get clearplaylistmedias => 'Borrar todos los medios';
	@override String get deletePlayList => 'Eliminar lista de reproducci??n';
	@override String get clearplaylistmediashint => '??Continuar y eliminar todos los medios de esta lista de reproducci??n?';
	@override String get deletePlayListhint => '??Continuar y eliminar esta lista de reproducci??n y borrar todos los medios?';
	@override String get videomessages => 'Mensajes de video';
	@override String get audiomessages => 'Mensajes de audio';
	@override String get comments => 'Comentarios';
	@override String get replies => 'Respuestas';
	@override String get reply => 'Respuesta';
	@override String get logintoaddcomment => 'Inicia sesi??n para a??adir un comentario';
	@override String get logintoreply => 'Inicia sesi??n para responder';
	@override String get writeamessage => 'Escribe un mensaje...';
	@override String get nocomments => 'No se encontraron comentarios \nhaga clic para reintentar';
	@override String get errormakingcomments => 'No se pueden procesar los comentarios en este momento..';
	@override String get errordeletingcomments => 'No se puede eliminar este comentario en este momento..';
	@override String get erroreditingcomments => 'No se puede editar este comentario en este momento..';
	@override String get errorloadingmorecomments => 'No se pueden cargar m??s comentarios en este momento..';
	@override String get deletingcomment => 'Eliminando comentario';
	@override String get editingcomment => 'Editando comentario';
	@override String get deletecommentalert => 'Eliminar comentario';
	@override String get editcommentalert => 'Editar comentario';
	@override String get deletecommentalerttext => '??Deseas borrar este comentario? Esta acci??n no se puede deshacer';
	@override String get loadmore => 'carga m??s';
	@override String get messages => 'Mensajes';
	@override String get guestuser => 'Usuario invitado';
	@override String get fullname => 'Nombre completo';
	@override String get emailaddress => 'Direcci??n de correo electr??nico';
	@override String get password => 'Contrase??a';
	@override String get repeatpassword => 'Repite la contrase??a';
	@override String get register => 'Registrarse';
	@override String get login => 'Iniciar sesi??n';
	@override String get logout => 'Cerrar sesi??n';
	@override String get logoutfromapp => '??Salir de la aplicaci??n?';
	@override String get logoutfromapphint => 'No podr?? dar me gusta o comentar art??culos y videos si no ha iniciado sesi??n.';
	@override String get gotologin => 'Ir a Iniciar sesi??n';
	@override String get resetpassword => 'Restablecer la contrase??a';
	@override String get logintoaccount => '??Ya tienes una cuenta? Iniciar sesi??n';
	@override String get emptyfielderrorhint => 'Necesitas llenar todos los campos';
	@override String get invalidemailerrorhint => 'Debes ingresar una direcci??n de correo electr??nico v??lida';
	@override String get passwordsdontmatch => 'Las contrase??as no coinciden';
	@override String get processingpleasewait => 'Procesando .. por favor espere...';
	@override String get createaccount => 'Crea una cuenta';
	@override String get forgotpassword => '??Se te olvid?? tu contrase??a?';
	@override String get orloginwith => 'O inicie sesi??n con';
	@override String get facebook => 'Facebook';
	@override String get google => 'Google';
	@override String get moreoptions => 'Mas opciones';
	@override String get about => 'Sobre nosotros';
	@override String get privacy => 'Privacidad';
	@override String get terms => 'T??rminos de la aplicaci??n';
	@override String get rate => 'Calificar aplicacion';
	@override String get version => 'Versi??n';
	@override String get pulluploadmore => 'levantar la carga';
	@override String get loadfailedretry => 'Error de carga. Haga clic en reintentar!';
	@override String get releaseloadmore => 'suelte para cargar m??s';
	@override String get nomoredata => 'No m??s datos';
	@override String get errorReportingComment => 'Comentario de informe de error';
	@override String get reportingComment => 'Informe de comentario';
	@override String get reportcomment => 'Opciones de informe';
	@override List<String> get reportCommentsList => [
		'Contenido comercial no deseado o spam',
		'Pornograf??a o material sexual expl??cito',
		'Discurso de odio o violencia gr??fica',
		'Acoso o intimidaci??n',
	];
	@override String get bookmarksMedia => 'Mis marcadores';
	@override String get noitemstodisplay => 'No hay elementos para mostrar';
	@override String get loginrequired => 'Necesario iniciar sesi??n';
	@override String get loginrequiredhint => 'Para suscribirse en esta plataforma, debe iniciar sesi??n. Cree una cuenta gratuita ahora o inicie sesi??n en su cuenta existente.';
	@override String get subscriptions => 'Suscripciones de aplicaciones';
	@override String get subscribe => 'SUSCRIBIR';
	@override String get subscribehint => 'Se requiere suscripci??n';
	@override String get playsubscriptionrequiredhint => 'Debe suscribirse antes de poder escuchar o ver este medio.';
	@override String get previewsubscriptionrequiredhint => 'Ha alcanzado la duraci??n de vista previa permitida para este medio. Debes suscribirte para seguir escuchando o viendo este medio.';
	@override String get copiedtoclipboard => 'Copiado al portapapeles';
	@override String get downloadbible => 'Descargar Biblia';
	@override String get downloadversion => 'Descargar';
	@override String get downloading => 'Descargando';
	@override String get failedtodownload => 'Error al descargar';
	@override String get pleaseclicktoretry => 'Haga clic para volver a intentarlo.';
	@override String get of => 'De';
	@override String get nobibleversionshint => 'No hay datos b??blicos para mostrar, haga clic en el bot??n de abajo para descargar al menos una versi??n b??blica.';
	@override String get downloaded => 'Descargado';
	@override String get enteremailaddresstoresetpassword => 'Ingrese su correo electr??nico para restablecer su contrase??a';
	@override String get backtologin => 'ATR??S PARA INICIAR SESI??N';
	@override String get signintocontinue => 'Reg??strate para continuar';
	@override String get signin => 'REGISTRARSE';
	@override String get signinforanaccount => '??REG??STRESE PARA OBTENER UNA CUENTA?';
	@override String get alreadyhaveanaccount => '??Ya tienes una cuenta?';
	@override String get updateprofile => 'Actualizaci??n del perfil';
	@override String get updateprofilehint => 'Para comenzar, actualice su p??gina de perfil, esto nos ayudar?? a conectarlo con otras personas';
	@override String get autoplayvideos => 'Reproducci??n autom??tica de v??deos';
	@override String get gosocial => 'Vu??lvete social';
	@override String get searchbible => 'Buscar Biblia';
	@override String get filtersearchoptions => 'Opciones de b??squeda de filtros';
	@override String get narrowdownsearch => 'Utilice el bot??n de filtro a continuaci??n para reducir la b??squeda y obtener un resultado m??s preciso.';
	@override String get searchbibleversion => 'Buscar la versi??n de la Biblia';
	@override String get searchbiblebook => 'Buscar libro de la Biblia';
	@override String get search => 'Buscar';
	@override String get setBibleBook => 'Establecer libro de la Biblia';
	@override String get oldtestament => 'Viejo Testamento';
	@override String get newtestament => 'Nuevo Testamento';
	@override String get limitresults => 'Establecer filtros';
	@override String get setfilters => 'Establecer filtros';
	@override String get bibletranslator => 'Traductor de la Biblia';
	@override String get chapter => ' Cap??tulo ';
	@override String get verse => ' Verso ';
	@override String get translate => 'traducir';
	@override String get bibledownloadinfo => 'Se inici?? la descarga de la Biblia. No cierre esta p??gina hasta que se haya realizado la descarga.';
	@override String get received => 'recibido';
	@override String get outoftotal => 'fuera del total';
	@override String get set => 'CONJUNTO';
	@override String get selectColor => 'Seleccionar el color';
	@override String get switchbibleversion => 'Cambiar versi??n de la Biblia';
	@override String get switchbiblebook => 'Cambiar libro de la Biblia';
	@override String get gotosearch => 'Ir al cap??tulo';
	@override String get changefontsize => 'Cambia tama??o de fuente';
	@override String get font => 'Font';
	@override String get readchapter => 'Leer cap??tulo';
	@override String get showhighlightedverse => 'Mostrar vers??culos destacados';
	@override String get downloadmoreversions => 'Descarga m??s versiones';
	@override String get suggestedusers => 'Usuarios sugeridos para seguir';
	@override String get unfollow => 'Dejar de seguir';
	@override String get follow => 'Seguir';
	@override String get searchforpeople => 'B??squeda de personas';
	@override String get viewpost => 'Ver publicacion';
	@override String get viewprofile => 'Ver perfil';
	@override String get mypins => 'Mis Pines';
	@override String get viewpinnedposts => 'Ver publicaciones fijadas';
	@override String get personal => 'Personal';
	@override String get update => 'Actualizar';
	@override String get phonenumber => 'N??mero de tel??fono';
	@override String get showmyphonenumber => 'Mostrar mi n??mero de tel??fono a los usuarios';
	@override String get dateofbirth => 'Fecha de nacimiento';
	@override String get showmyfulldateofbirth => 'Mostrar mi fecha de nacimiento completa a las personas que ven mi estado';
	@override String get notifications => 'Notificaciones';
	@override String get notifywhenuserfollowsme => 'Notificarme cuando un usuario me siga';
	@override String get notifymewhenusercommentsonmypost => 'Notificarme cuando los usuarios comenten en mi publicaci??n';
	@override String get notifymewhenuserlikesmypost => 'Notificarme cuando a los usuarios les guste mi publicaci??n';
	@override String get churchsocial => 'Iglesia Social';
	@override String get shareyourthoughts => 'Comparte tus pensamientos';
	@override String get readmore => '...Lee mas';
	@override String get less => ' Menos';
	@override String get couldnotprocess => 'No se pudo procesar la acci??n solicitada.';
	@override String get pleaseselectprofilephoto => 'Seleccione una foto de perfil para cargar';
	@override String get pleaseselectprofilecover => 'Seleccione una foto de portada para cargar';
	@override String get updateprofileerrorhint => 'Debe ingresar su nombre, fecha de nacimiento, sexo, tel??fono y ubicaci??n antes de poder continuar.';
	@override String get gender => 'G??nero';
	@override String get male => 'Masculino';
	@override String get female => 'Hembra';
	@override String get dob => 'Fecha de nacimiento';
	@override String get location => 'Ubicaci??n actual';
	@override String get qualification => 'Calificaci??n';
	@override String get aboutme => 'Sobre m??';
	@override String get facebookprofilelink => 'Facebook Enlace de perfil';
	@override String get twitterprofilelink => 'Twitter Enlace de perfil';
	@override String get linkdln => 'Linkedln Enlace de perfil';
	@override String get likes => 'Gustos';
	@override String get likess => 'Me gusta(s)';
	@override String get pinnedposts => 'Mis publicaciones fijadas';
	@override String get unpinpost => 'Desanclar publicaci??n';
	@override String get unpinposthint => '??Deseas eliminar esta publicaci??n de tus publicaciones fijadas?';
	@override String get postdetails => 'Detalles de la publicaci??n';
	@override String get posts => 'Publicaciones';
	@override String get followers => 'Seguidores';
	@override String get followings => 'Siguientes';
	@override String get my => 'Mi';
	@override String get edit => 'Editar';
	@override String get delete => 'Eliminar';
	@override String get deletepost => 'Eliminar mensaje';
	@override String get deleteposthint => '??Deseas eliminar esta publicaci??n? Las publicaciones a??n pueden aparecer en los feeds de algunos usuarios.';
	@override String get maximumallowedsizehint => 'Se alcanz?? la carga m??xima de archivos permitida';
	@override String get maximumuploadsizehint => 'El archivo seleccionado supera el l??mite de tama??o de archivo de carga permitido.';
	@override String get makeposterror => 'No se puede publicar en este momento, haga clic para volver a intentarlo.';
	@override String get makepost => 'Hacer publicaci??n';
	@override String get selectfile => 'Seleccione Archivo';
	@override String get images => 'Imagenes';
	@override String get shareYourThoughtsNow => 'Share your thoughts ...';
	@override String get photoviewer => 'Visionneuse de photos';
	@override String get nochatsavailable => 'No hay conversaciones disponibles \n Haga clic en el icono de agregar a continuaci??n \n para seleccionar los usuarios con los que chatear';
	@override String get typing => 'Mecanograf??a...';
	@override String get photo => 'Photo';
	@override String get online => 'En l??nea';
	@override String get offline => 'Desconectado';
	@override String get lastseen => 'Ultima vez visto';
	@override String get deleteselectedhint => 'Esta acci??n eliminar?? los mensajes seleccionados. Tenga en cuenta que esto solo elimina su lado de la conversaci??n, \n los mensajes seguir??n apareciendo en el dispositivo de su socio.';
	@override String get deleteselected => 'Eliminar seleccionado';
	@override String get unabletofetchconversation => 'No se pudo recuperar \ntu conversaci??n con \n';
	@override String get loadmoreconversation => 'Cargar m??s conversaciones';
	@override String get sendyourfirstmessage => 'Env??a tu primer mensaje a \n';
	@override String get unblock => 'Desatascar ';
	@override String get block => 'Bloquear ';
	@override String get writeyourmessage => 'escribe tu mensaje...';
	@override String get clearconversation => 'Conversaci??n clara';
	@override String get clearconversationhintone => 'Esta acci??n borrar?? toda su conversaci??n con ';
	@override String get clearconversationhinttwo => '.\n  Tenga en cuenta que esto solo elimina su lado de la conversaci??n, los mensajes a??n se mostrar??n en el chat de sus socios.';
	@override String get facebookloginerror => 'Something went wrong with the login process.\n, Here is the error Facebook gave us';
}

class StringsFr extends Strings {
	static StringsFr _instance = StringsFr();
	static StringsFr get instance => _instance;

	@override String get appname => 'MyChurch App';
	@override String get selectlanguage => 'Choisir la langue';
	@override String get chooseapplanguage => 'Choisissez la langue de l\'application';
	@override String get nightmode => 'Mode nuit';
	@override String get initializingapp => 'initialisation...';
	@override String get home => 'Accueil';
	@override String get branches => 'Branches';
	@override String get inbox => 'Bo??te de r??ception';
	@override String get downloads => 'T??l??chargements';
	@override String get settings => 'Param??tres';
	@override String get events => '??v??nements';
	@override String get myplaylists => 'Mes listes de lecture';
	@override String get nonotesfound => 'Aucune note trouv??e';
	@override String get newnote => 'Nouveau';
	@override String get website => 'Site Internet';
	@override String get hymns => 'Hymnes';
	@override String get articles => 'Des articles';
	@override String get notes => 'Remarques';
	@override String get donate => 'Faire un don';
	@override String get deletenote => 'Supprimer la note';
	@override String get deletenotehint => 'Voulez-vous supprimer cette note? Cette action ne peut pas ??tre annul??e.';
	@override String get savenotetitle => 'Titre de la note';
	@override String get bookmarks => 'Favoris';
	@override String get socialplatforms => 'Plateformes sociales';
	@override List<String> get onboardingpagetitles => [
		'Bienvenue ?? MyChurch',
		'Plein de fonctionnalit??s',
		'Audio, Video \n et diffusion en direct',
		'Cr??er un compte',
	];
	@override List<String> get onboardingpagehints => [
		'Prolongez-vous au-del?? des dimanches matins et des quatre murs de votre ??glise. Tout ce dont vous avez besoin pour communiquer et interagir avec un monde ax?? sur le mobile.',
		'Nous avons rassembl?? toutes les fonctionnalit??s principales que votre application d\'??glise doit avoir. ??v??nements, d??votions, notifications, notes et bible multi-version.',
		'Permettez aux utilisateurs du monde entier de regarder des vid??os, d\'??couter des messages audio et de regarder des flux en direct de vos services religieux.',
		'Commencez votre voyage vers une exp??rience de culte sans fin.',
	];
	@override String get next => 'SUIVANT';
	@override String get done => 'COMMENCER';
	@override String get quitapp => 'Quitter l\'application!';
	@override String get quitappwarning => 'Souhaitez-vous fermer l\'application?';
	@override String get quitappaudiowarning => 'Vous ??tes en train de lire un fichier audio, quitter l\'application arr??tera la lecture audio. Si vous ne souhaitez pas arr??ter la lecture, r??duisez simplement l\'application avec le bouton central ou cliquez sur le bouton OK pour quitter l\'application maintenant.';
	@override String get ok => 'D\'accord';
	@override String get retry => 'RECOMMENCEZ';
	@override String get oops => 'Oups!';
	@override String get save => 'sauver';
	@override String get cancel => 'Annuler';
	@override String get error => 'Erreur';
	@override String get success => 'Succ??s';
	@override String get skip => 'Sauter';
	@override String get skiplogin => 'Passer l\'identification';
	@override String get skipregister => 'Sauter l\'inscription';
	@override String get dataloaderror => 'Impossible de charger les donn??es demand??es pour le moment, v??rifiez votre connexion de donn??es et cliquez pour r??essayer.';
	@override String get suggestedforyou => 'Sugg??r?? pour vous';
	@override String get devotionals => 'D??votion';
	@override String get categories => 'Cat??gories';
	@override String get category => 'Cat??gorie';
	@override String get videos => 'Vid??os';
	@override String get audios => 'Audios';
	@override String get biblebooks => 'Bible';
	@override String get audiobible => 'Bible audio';
	@override String get livestreams => 'Livestreams';
	@override String get radio => 'Radio';
	@override String get allitems => 'Tous les articles';
	@override String get emptyplaylist => 'Aucune liste de lecture';
	@override String get notsupported => 'Non support??';
	@override String get cleanupresources => 'Nettoyage des ressources';
	@override String get grantstoragepermission => 'Veuillez accorder l\'autorisation d\'acc??s au stockage pour continuer';
	@override String get sharefiletitle => 'Regarder ou ??couter ';
	@override String get sharefilebody => 'Via MyChurch App, T??l??chargez maintenant sur ';
	@override String get sharetext => 'Profitez d\'un streaming audio et vid??o illimit??';
	@override String get sharetexthint => 'Rejoignez la plateforme de streaming vid??o et audio qui vous permet de regarder et d\'??couter des millions de fichiers du monde entier. T??l??chargez maintenant sur';
	@override String get download => 'T??l??charger';
	@override String get addplaylist => 'Ajouter ?? la playlist';
	@override String get bookmark => 'Signet';
	@override String get unbookmark => 'Supprimer les favoris';
	@override String get share => 'Partager';
	@override String get deletemedia => 'Supprimer le fichier';
	@override String get deletemediahint => 'Souhaitez-vous supprimer ce fichier t??l??charg??? Cette action ne peut pas ??tre annul??e.';
	@override String get searchhint => 'Rechercher des messages audio et vid??o';
	@override String get performingsearch => 'Recherche d\'audio et de vid??os';
	@override String get nosearchresult => 'Aucun r??sultat trouv??';
	@override String get nosearchresulthint => 'Essayez de saisir un mot cl?? plus g??n??ral';
	@override String get addtoplaylist => 'Ajouter ?? la playlist';
	@override String get newplaylist => 'Nouvelle playlist';
	@override String get playlistitm => 'Playlist';
	@override String get mediaaddedtoplaylist => 'M??dia ajout?? ?? la playlist.';
	@override String get mediaremovedfromplaylist => 'M??dia supprim?? de la playlist';
	@override String get clearplaylistmedias => 'Effacer tous les m??dias';
	@override String get deletePlayList => 'Supprimer la playlist';
	@override String get clearplaylistmediashint => 'Voulez-vous supprimer tous les m??dias de cette liste de lecture?';
	@override String get deletePlayListhint => 'Voulez-vous supprimer cette liste de lecture et effacer tous les m??dias?';
	@override String get videomessages => 'Messages vid??o';
	@override String get audiomessages => 'Messages audio';
	@override String get comments => 'commentaires';
	@override String get replies => 'r??ponses';
	@override String get reply => 'R??pondre';
	@override String get logintoaddcomment => 'Connectez-vous pour ajouter un commentaire';
	@override String get logintoreply => 'Connectez-vous pour r??pondre';
	@override String get writeamessage => '??crire un message...';
	@override String get nocomments => 'Aucun commentaire trouv?? \ncliquez pour r??essayer';
	@override String get errormakingcomments => 'Impossible de traiter les commentaires pour le moment..';
	@override String get errordeletingcomments => 'Impossible de supprimer ce commentaire pour le moment..';
	@override String get erroreditingcomments => 'Impossible de modifier ce commentaire pour le moment..';
	@override String get errorloadingmorecomments => 'Impossible de charger plus de commentaires pour le moment..';
	@override String get deletingcomment => 'Suppression du commentaire';
	@override String get editingcomment => 'Modification du commentaire';
	@override String get deletecommentalert => 'Supprimer le commentaire';
	@override String get editcommentalert => 'Modifier le commentaire';
	@override String get deletecommentalerttext => 'Souhaitez-vous supprimer ce commentaire? Cette action ne peut pas ??tre annul??e';
	@override String get loadmore => 'charger plus';
	@override String get messages => 'Messages';
	@override String get guestuser => 'Utilisateur invit??';
	@override String get fullname => 'Nom complet';
	@override String get emailaddress => 'Adresse ??lectronique';
	@override String get password => 'Mot de passe';
	@override String get repeatpassword => 'R??p??ter le mot de passe';
	@override String get register => 'S\'inscrire';
	@override String get login => 'S\'identifier';
	@override String get logout => 'Se d??connecter';
	@override String get logoutfromapp => 'D??connexion de l\'application?';
	@override String get logoutfromapphint => 'Vous ne pourrez pas aimer ou commenter des articles et des vid??os si vous n\'??tes pas connect??.';
	@override String get gotologin => 'Aller ?? la connexion';
	@override String get resetpassword => 'r??initialiser le mot de passe';
	@override String get logintoaccount => 'Vous avez d??j?? un compte? S\'identifier';
	@override String get emptyfielderrorhint => 'Vous devez remplir tous les champs';
	@override String get invalidemailerrorhint => 'Vous devez saisir une adresse e-mail valide';
	@override String get passwordsdontmatch => 'Les mots de passe ne correspondent pas';
	@override String get processingpleasewait => 'Traitement, veuillez patienter...';
	@override String get createaccount => 'Cr??er un compte';
	@override String get forgotpassword => 'Mot de passe oubli???';
	@override String get orloginwith => 'Ou connectez-vous avec';
	@override String get facebook => 'Facebook';
	@override String get google => 'Google';
	@override String get moreoptions => 'Plus d\'options';
	@override String get about => '?? propos de nous';
	@override String get privacy => 'confidentialit??';
	@override String get terms => 'Termes de l\'application';
	@override String get rate => 'Application de taux';
	@override String get version => 'Version';
	@override String get pulluploadmore => 'tirer la charge';
	@override String get loadfailedretry => '??chec du chargement! Cliquez sur R??essayer!';
	@override String get releaseloadmore => 'rel??chez pour charger plus';
	@override String get nomoredata => 'Plus de donn??es';
	@override String get errorReportingComment => 'Commentaire de rapport d\'erreur';
	@override String get reportingComment => 'Signaler un commentaire';
	@override String get reportcomment => 'Options de rapport';
	@override List<String> get reportCommentsList => [
		'Contenu commercial ind??sirable ou spam',
		'Pornographie ou mat??riel sexuel explicite',
		'Discours haineux ou violence graphique',
		'Harc??lement ou intimidation',
	];
	@override String get bookmarksMedia => 'Mes marque-pages';
	@override String get noitemstodisplay => 'Aucun ??l??ment ?? afficher';
	@override String get loginrequired => 'Connexion requise';
	@override String get loginrequiredhint => 'Pour vous abonner ?? cette plateforme, vous devez ??tre connect??. Cr??ez un compte gratuit maintenant ou connectez-vous ?? votre compte existant.';
	@override String get subscriptions => 'Abonnements aux applications';
	@override String get subscribe => 'SOUSCRIRE';
	@override String get subscribehint => 'Abonnement requis';
	@override String get playsubscriptionrequiredhint => 'Vous devez vous abonner avant de pouvoir ??couter ou regarder ce m??dia.';
	@override String get previewsubscriptionrequiredhint => 'Vous avez atteint la dur??e de pr??visualisation autoris??e pour ce m??dia. Vous devez vous abonner pour continuer ?? ??couter ou ?? regarder ce m??dia.';
	@override String get copiedtoclipboard => 'Copi?? dans le presse-papier';
	@override String get downloadbible => 'T??l??charger la Bible';
	@override String get downloadversion => 'T??l??charger';
	@override String get downloading => 'T??l??chargement';
	@override String get failedtodownload => '??chec du t??l??chargement';
	@override String get pleaseclicktoretry => 'Veuillez cliquer pour r??essayer.';
	@override String get of => 'De';
	@override String get nobibleversionshint => 'Il n\'y a pas de donn??es bibliques ?? afficher, cliquez sur le bouton ci-dessous pour t??l??charger au moins une version biblique.';
	@override String get downloaded => 'T??l??charg??';
	@override String get enteremailaddresstoresetpassword => 'Entrez votre e-mail pour r??initialiser votre mot de passe';
	@override String get backtologin => 'RETOUR CONNEXION';
	@override String get signintocontinue => 'Connectez-vous pour continuer';
	@override String get signin => 'SE CONNECTER';
	@override String get signinforanaccount => 'INSCRIVEZ-VOUS POUR UN COMPTE?';
	@override String get alreadyhaveanaccount => 'Vous avez d??j?? un compte?';
	@override String get updateprofile => 'Mettre ?? jour le profil';
	@override String get updateprofilehint => 'Pour commencer, veuillez mettre ?? jour votre page de profil, cela nous aidera ?? vous connecter avec d\'autres personnes';
	@override String get autoplayvideos => 'Vid??os de lecture automatique';
	@override String get gosocial => 'Passez aux r??seaux sociaux';
	@override String get searchbible => 'Rechercher dans la Bible';
	@override String get filtersearchoptions => 'Filtrer les options de recherche';
	@override String get narrowdownsearch => 'Utilisez le bouton de filtrage ci-dessous pour affiner la recherche pour un r??sultat plus pr??cis.';
	@override String get searchbibleversion => 'Rechercher la version de la Bible';
	@override String get searchbiblebook => 'Rechercher un livre biblique';
	@override String get search => 'Chercher';
	@override String get setBibleBook => 'D??finir le livre de la Bible';
	@override String get oldtestament => 'L\'Ancien Testament';
	@override String get newtestament => 'Nouveau Testament';
	@override String get limitresults => 'Limiter les r??sultats';
	@override String get setfilters => 'D??finir les filtres';
	@override String get bibletranslator => 'Traducteur de la Bible';
	@override String get chapter => ' Chapitre ';
	@override String get verse => ' Verset ';
	@override String get translate => 'traduire';
	@override String get bibledownloadinfo => 'Le t??l??chargement de la Bible a commenc??, veuillez ne pas fermer cette page tant que le t??l??chargement n\'est pas termin??.';
	@override String get received => 're??u';
	@override String get outoftotal => 'sur le total';
	@override String get set => 'ENSEMBLE';
	@override String get selectColor => 'Select Color';
	@override String get switchbibleversion => 'Changer de version de la Bible';
	@override String get switchbiblebook => 'Changer de livre biblique';
	@override String get gotosearch => 'Aller au chapitre';
	@override String get changefontsize => 'Changer la taille de la police';
	@override String get font => 'Police de caract??re';
	@override String get readchapter => 'Lire le chapitre';
	@override String get showhighlightedverse => 'Afficher les versets en surbrillance';
	@override String get downloadmoreversions => 'T??l??charger plus de versions';
	@override String get suggestedusers => 'Utilisateurs sugg??r??s ?? suivre';
	@override String get unfollow => 'Ne pas suivre';
	@override String get follow => 'Suivre';
	@override String get searchforpeople => 'Recherche de personnes';
	@override String get viewpost => 'Voir l\'article';
	@override String get viewprofile => 'Voir le profil';
	@override String get mypins => 'Mes ??pingles';
	@override String get viewpinnedposts => 'Afficher les messages ??pingl??s';
	@override String get personal => 'Personnel';
	@override String get update => 'Mettre ?? jour';
	@override String get phonenumber => 'Num??ro de t??l??phone';
	@override String get showmyphonenumber => 'Afficher mon num??ro de t??l??phone aux utilisateurs';
	@override String get dateofbirth => 'Date de naissance';
	@override String get showmyfulldateofbirth => 'Afficher ma date de naissance compl??te aux personnes qui consultent mon statut';
	@override String get notifications => 'Notifications';
	@override String get notifywhenuserfollowsme => 'M\'avertir lorsqu\'un utilisateur me suit';
	@override String get notifymewhenusercommentsonmypost => 'M\'avertir lorsque les utilisateurs commentent mon message';
	@override String get notifymewhenuserlikesmypost => 'M\'avertir lorsque les utilisateurs aiment mon message';
	@override String get churchsocial => '??glise sociale';
	@override String get shareyourthoughts => 'Partage tes pens??es';
	@override String get readmore => '...Lire la suite';
	@override String get less => ' Moins';
	@override String get couldnotprocess => 'Impossible de traiter l\'action demand??e.';
	@override String get pleaseselectprofilephoto => 'Veuillez s??lectionner une photo de profil ?? t??l??charger';
	@override String get pleaseselectprofilecover => 'Veuillez s??lectionner une photo de couverture ?? t??l??charger';
	@override String get updateprofileerrorhint => 'Vous devez renseigner votre nom, date de naissance, sexe, t??l??phone et lieu avant de pouvoir continuer.';
	@override String get gender => 'Le sexe';
	@override String get male => 'M??le';
	@override String get female => 'Femme';
	@override String get dob => 'Date de naissance';
	@override String get location => 'Localisation actuelle';
	@override String get qualification => 'Qualification';
	@override String get aboutme => '?? propos de moi';
	@override String get facebookprofilelink => 'Lien de profil Facebook';
	@override String get twitterprofilelink => 'Lien de profil Twitter';
	@override String get linkdln => 'Lien de profil Linkedln';
	@override String get likes => 'Aime';
	@override String get likess => 'Comme';
	@override String get pinnedposts => 'Mes messages ??pingl??s';
	@override String get unpinpost => 'D??tacher le message';
	@override String get unpinposthint => 'Souhaitez-vous supprimer ce message de vos messages ??pingl??s?';
	@override String get postdetails => 'D??tails de l\'article';
	@override String get posts => 'Des postes';
	@override String get followers => 'Suiveurs';
	@override String get followings => 'Suivi';
	@override String get my => 'Mon';
	@override String get edit => '??diter';
	@override String get delete => 'Supprimer';
	@override String get deletepost => 'Supprimer le message';
	@override String get deleteposthint => 'Souhaitez-vous supprimer ce message? Les publications peuvent toujours appara??tre sur les flux de certains utilisateurs.';
	@override String get maximumallowedsizehint => 'T??l??chargement de fichier maximum autoris?? atteint';
	@override String get maximumuploadsizehint => 'Le fichier s??lectionn?? d??passe la limite de taille de fichier de t??l??chargement autoris??e.';
	@override String get makeposterror => 'Impossible de publier un message pour le moment, veuillez cliquer pour r??essayer.';
	@override String get makepost => 'Faire un message';
	@override String get selectfile => 'Choisir le dossier';
	@override String get images => 'Images';
	@override String get shareYourThoughtsNow => 'Share your thoughts ...';
	@override String get photoviewer => 'Visor de fotos';
	@override String get nochatsavailable => 'Aucune conversation disponible \n Cliquez sur l\'ic??ne d\'ajout ci-dessous \n pour s??lectionner les utilisateurs avec lesquels discuter';
	@override String get typing => 'Dactylographie...';
	@override String get photo => 'Foto';
	@override String get online => 'En ligne';
	@override String get offline => 'Hors ligne';
	@override String get lastseen => 'Derni??re vue';
	@override String get deleteselectedhint => 'Cette action supprimera les messages s??lectionn??s. Veuillez noter que cela ne supprime que votre c??t?? de la conversation, \n les messages s\'afficheront toujours sur votre appareil partenaire.';
	@override String get deleteselected => 'Supprimer s??lectionn??e';
	@override String get unabletofetchconversation => 'Impossible de r??cup??rer \n votre conversation avec \n';
	@override String get loadmoreconversation => 'Charger plus de conversations';
	@override String get sendyourfirstmessage => 'Envoyez votre premier message ?? \n';
	@override String get unblock => 'D??bloquer ';
	@override String get block => 'Bloquer ';
	@override String get writeyourmessage => 'R??digez votre message...';
	@override String get clearconversation => 'Conversation claire';
	@override String get clearconversationhintone => 'Cette action effacera toute votre conversation avec ';
	@override String get clearconversationhinttwo => '.\n  Veuillez noter que cela ne supprime que votre c??t?? de la conversation, les messages seront toujours affich??s sur le chat de votre partenaire.';
	@override String get facebookloginerror => 'Something went wrong with the login process.\n, Here is the error Facebook gave us';
}

class StringsPt extends Strings {
	static StringsPt _instance = StringsPt();
	static StringsPt get instance => _instance;

	@override String get appname => 'MyChurch App';
	@override String get selectlanguage => 'Selecione o idioma';
	@override String get chooseapplanguage => 'Escolha o idioma do aplicativo';
	@override String get nightmode => 'Modo noturno';
	@override String get initializingapp => 'inicializando...';
	@override String get home => 'Casa';
	@override String get branches => 'Ramos';
	@override String get inbox => 'Caixa de entrada';
	@override String get downloads => 'Transfer??ncias';
	@override String get settings => 'Configura????es';
	@override String get events => 'Eventos';
	@override String get myplaylists => 'Minhas Playlists';
	@override String get website => 'Local na rede Internet';
	@override String get hymns => 'Hinos';
	@override String get articles => 'Artigos';
	@override String get notes => 'Notas';
	@override String get donate => 'Doar';
	@override String get bookmarks => 'Favoritos';
	@override String get socialplatforms => 'Plataformas Sociais';
	@override List<String> get onboardingpagetitles => [
		'Bem-vindo ao MyChurch',
		'Repleto de recursos',
		'??udio, v??deo \n e transmiss??o ao vivo',
		'Criar Conta',
	];
	@override List<String> get onboardingpagehints => [
		'V?? al??m das manh??s de domingo e das quatro paredes de sua igreja. Tudo que voc?? precisa para se comunicar e interagir com um mundo focado em dispositivos m??veis.',
		'Reunimos todos os principais recursos que seu aplicativo de igreja deve ter. Eventos, devocionais, notifica????es, notas e b??blia em v??rias vers??es.',
		'Permita que usu??rios de todo o mundo assistam a v??deos, ou??am mensagens de ??udio e assistam a transmiss??es ao vivo de seus servi??os religiosos.',
		'Comece sua jornada para uma experi??ncia de adora????o sem fim.',
	];
	@override String get next => 'PR??XIMO';
	@override String get done => 'INICIAR';
	@override String get quitapp => 'Sair do aplicativo!';
	@override String get quitappwarning => 'Voc?? deseja fechar o aplicativo?';
	@override String get quitappaudiowarning => 'No momento, voc?? est?? reproduzindo um ??udio. Sair do aplicativo interromper?? a reprodu????o do ??udio. Se voc?? n??o deseja interromper a reprodu????o, apenas minimize o aplicativo com o bot??o central ou clique no bot??o Ok para encerrar o aplicativo agora.';
	@override String get ok => 'Est?? bem';
	@override String get retry => 'TENTAR NOVAMENTE';
	@override String get oops => 'Opa!';
	@override String get save => 'Salve ???';
	@override String get cancel => 'Cancelar';
	@override String get error => 'Erro';
	@override String get success => 'Sucesso';
	@override String get skip => 'Pular';
	@override String get skiplogin => 'Pular login';
	@override String get skipregister => 'Ignorar registro';
	@override String get dataloaderror => 'N??o foi poss??vel carregar os dados solicitados no momento, verifique sua conex??o de dados e clique para tentar novamente.';
	@override String get suggestedforyou => 'Sugerido para voc??';
	@override String get devotionals => 'Devocionais';
	@override String get categories => 'Categorias';
	@override String get category => 'Categoria';
	@override String get videos => 'V??deos';
	@override String get audios => '??udios';
	@override String get biblebooks => 'B??blia';
	@override String get audiobible => 'B??blia em ??udio';
	@override String get livestreams => 'Transmiss??es ao vivo';
	@override String get radio => 'R??dio';
	@override String get allitems => 'Todos os itens';
	@override String get emptyplaylist => 'Sem listas de reprodu????o';
	@override String get notsupported => 'N??o suportado';
	@override String get cleanupresources => 'Limpando recursos';
	@override String get grantstoragepermission => 'Conceda permiss??o de acesso ao armazenamento para continuar';
	@override String get sharefiletitle => 'Assistir ou ouvir ';
	@override String get sharefilebody => 'Atrav??s da MyChurch App, Baixe agora em ';
	@override String get sharetext => 'Desfrute de streaming ilimitado de ??udio e v??deo';
	@override String get sharetexthint => 'Junte-se ?? plataforma de streaming de v??deo e ??udio que permite assistir e ouvir milh??es de arquivos de todo o mundo. Baixe agora em';
	@override String get download => 'Baixar';
	@override String get addplaylist => 'Adicionar ?? Playlist';
	@override String get bookmark => 'marca p??ginas';
	@override String get unbookmark => 'Desmarcar';
	@override String get share => 'Compartilhar';
	@override String get deletemedia => 'Excluir arquivo';
	@override String get deletemediahint => 'Voc?? deseja excluir este arquivo baixado? Essa a????o n??o pode ser desfeita.';
	@override String get nonotesfound => 'Nenhuma nota encontrada';
	@override String get newnote => 'Novo';
	@override String get savenotetitle => 'T??tulo da Nota';
	@override String get searchhint => 'Pesquisar mensagens de ??udio e v??deo';
	@override String get performingsearch => 'Pesquisando ??udios e v??deos';
	@override String get nosearchresult => 'Nenhum resultado encontrado';
	@override String get nosearchresulthint => 'Tente inserir palavras-chave mais gerais';
	@override String get deletenote => 'Excluir nota';
	@override String get deletenotehint => 'Voc?? quer deletar esta nota? Esta a????o n??o pode ser revertida.';
	@override String get addtoplaylist => 'Adicionar ?? Playlist';
	@override String get newplaylist => 'Nova Playlist';
	@override String get playlistitm => 'Lista de reprodu????o';
	@override String get mediaaddedtoplaylist => 'M??dia adicionada ?? lista de reprodu????o.';
	@override String get mediaremovedfromplaylist => 'M??dia removida da lista de reprodu????o';
	@override String get clearplaylistmedias => 'Limpar todas as m??dias';
	@override String get deletePlayList => 'Excluir lista de reprodu????o';
	@override String get clearplaylistmediashint => 'V?? em frente e remover todas as m??dias desta lista de reprodu????o?';
	@override String get deletePlayListhint => 'V?? em frente e exclua esta lista de reprodu????o e limpar todas as m??dias?';
	@override String get videomessages => 'Mensagens de V??deo';
	@override String get audiomessages => 'Mensagens de ??udio';
	@override String get comments => 'Coment??rios';
	@override String get replies => 'Respostas';
	@override String get reply => 'Resposta';
	@override String get logintoaddcomment => 'Fa??a login para adicionar um coment??rio';
	@override String get logintoreply => 'Entre para responder';
	@override String get writeamessage => 'Escreve uma mensagem...';
	@override String get nocomments => 'Nenhum coment??rio encontrado \nclique para tentar novamente';
	@override String get errormakingcomments => 'N??o ?? poss??vel processar coment??rios no momento..';
	@override String get errordeletingcomments => 'N??o ?? poss??vel excluir este coment??rio no momento..';
	@override String get erroreditingcomments => 'N??o ?? poss??vel editar este coment??rio no momento..';
	@override String get errorloadingmorecomments => 'N??o ?? poss??vel carregar mais coment??rios no momento..';
	@override String get deletingcomment => 'Excluindo coment??rio';
	@override String get editingcomment => 'Editando coment??rio';
	@override String get deletecommentalert => 'Apagar Coment??rio';
	@override String get editcommentalert => 'Editar Coment??rio';
	@override String get deletecommentalerttext => 'Voc?? deseja deletar este coment??rio? Essa a????o n??o pode ser desfeita';
	@override String get loadmore => 'Carregue mais';
	@override String get messages => 'Mensagens';
	@override String get guestuser => 'Usu??rio Convidado';
	@override String get fullname => 'Nome completo';
	@override String get emailaddress => 'Endere??o de e-mail';
	@override String get password => 'Senha';
	@override String get repeatpassword => 'Repita a senha';
	@override String get register => 'Registro';
	@override String get login => 'Conecte-se';
	@override String get logout => 'Sair';
	@override String get logoutfromapp => 'Sair do aplicativo?';
	@override String get logoutfromapphint => 'Voc?? n??o poder?? curtir ou comentar em artigos e v??deos se n??o estiver logado.';
	@override String get gotologin => 'V?? para o Login';
	@override String get resetpassword => 'Redefinir senha';
	@override String get logintoaccount => 'j?? tem uma conta? Conecte-se';
	@override String get emptyfielderrorhint => 'Voc?? precisa preencher todos os campos';
	@override String get invalidemailerrorhint => 'Voc?? precisa inserir um endere??o de e-mail v??lido';
	@override String get passwordsdontmatch => 'As senhas n??o conferem';
	@override String get processingpleasewait => 'Processando ... Por favor aguarde';
	@override String get createaccount => 'Crie a sua conta aqui';
	@override String get forgotpassword => 'Esqueceu a senha?';
	@override String get orloginwith => 'Ou fa??a login com';
	@override String get facebook => 'Facebook';
	@override String get google => 'Google';
	@override String get moreoptions => 'Mais op????es';
	@override String get about => 'Sobre n??s';
	@override String get privacy => 'Privacidade';
	@override String get terms => 'Termos do aplicativo';
	@override String get rate => 'Avaliar aplicativo';
	@override String get version => 'Vers??o';
	@override String get pulluploadmore => 'puxar a carga';
	@override String get loadfailedretry => 'Falha ao carregar! Clique em repetir!';
	@override String get releaseloadmore => 'solte para carregar mais';
	@override String get nomoredata => 'Sem mais dados';
	@override String get errorReportingComment => 'Coment??rio do Error Reporting';
	@override String get reportingComment => 'Coment??rio de relat??rio';
	@override String get reportcomment => 'Op????es de relat??rio';
	@override List<String> get reportCommentsList => [
		'Conte??do comercial indesejado ou spam',
		'Pornografia ou material sexual expl??cito',
		'Discurso de ??dio ou viol??ncia gr??fica',
		'Ass??dio ou intimida????o',
	];
	@override String get bookmarksMedia => 'Meus marcadores de livro';
	@override String get noitemstodisplay => 'Nenhum item para exibir';
	@override String get loginrequired => 'Login necess??rio';
	@override String get loginrequiredhint => 'Para se inscrever nesta plataforma, voc?? precisa estar logado. Crie uma conta gratuita agora ou fa??a login em sua conta existente.';
	@override String get subscriptions => 'Assinaturas de aplicativos';
	@override String get subscribe => 'SE INSCREVER';
	@override String get subscribehint => 'Assinatura necess??ria';
	@override String get playsubscriptionrequiredhint => 'Voc?? precisa se inscrever antes de ouvir ou assistir a esta m??dia.';
	@override String get previewsubscriptionrequiredhint => 'Voc?? atingiu a dura????o de visualiza????o permitida para esta m??dia. Voc?? precisa se inscrever para continuar ouvindo ou assistindo esta m??dia.';
	@override String get copiedtoclipboard => 'Copiado para a ??rea de transfer??ncia';
	@override String get downloadbible => 'Baixe a B??blia';
	@override String get downloadversion => 'Baixar';
	@override String get downloading => 'Baixando';
	@override String get failedtodownload => 'Falhou o download';
	@override String get pleaseclicktoretry => 'Clique para tentar novamente.';
	@override String get of => 'Do';
	@override String get nobibleversionshint => 'N??o h?? dados da B??blia para exibir, clique no bot??o abaixo para baixar pelo menos uma vers??o da B??blia.';
	@override String get downloaded => 'Baixado';
	@override String get enteremailaddresstoresetpassword => 'Insira seu e-mail para redefinir sua senha';
	@override String get backtologin => 'VOLTE AO LOGIN';
	@override String get signintocontinue => 'Fa??a login para continuar';
	@override String get signin => 'ASSINAR EM';
	@override String get signinforanaccount => 'INSCREVA-SE PRA UMA CONTA?';
	@override String get alreadyhaveanaccount => 'j?? tem uma conta?';
	@override String get updateprofile => 'Atualizar perfil';
	@override String get updateprofilehint => 'Para come??ar, atualize sua p??gina de perfil, isso nos ajudar?? a conectar voc?? com outras pessoas';
	@override String get autoplayvideos => 'V??deos de reprodu????o autom??tica';
	@override String get gosocial => 'Social';
	@override String get searchbible => 'B??blia Pesquisa';
	@override String get filtersearchoptions => 'Op????es de pesquisa de filtro';
	@override String get narrowdownsearch => 'Use o bot??o de filtro abaixo para restringir a busca por um resultado mais preciso.';
	@override String get searchbibleversion => 'Vers??o da B??blia de pesquisa';
	@override String get searchbiblebook => 'Pesquisar livro b??blico';
	@override String get search => 'Procurar';
	@override String get setBibleBook => 'Set Bible Book';
	@override String get oldtestament => 'Antigo Testamento';
	@override String get newtestament => 'Novo Testamento';
	@override String get limitresults => 'Limite de resultados';
	@override String get setfilters => 'Definir Filtros';
	@override String get bibletranslator => 'Tradutor da b??blia';
	@override String get chapter => ' Cap??tulo ';
	@override String get verse => ' Vers??culo ';
	@override String get translate => 'traduzir';
	@override String get bibledownloadinfo => 'Download da B??blia iniciado, por favor, n??o feche esta p??gina at?? que o download seja conclu??do.';
	@override String get received => 'recebido';
	@override String get outoftotal => 'fora do total';
	@override String get set => 'CONJUNTO';
	@override String get selectColor => 'Selecione a cor';
	@override String get switchbibleversion => 'Mudar a vers??o da B??blia';
	@override String get switchbiblebook => 'Trocar livro b??blico';
	@override String get gotosearch => 'V?? para o Cap??tulo';
	@override String get changefontsize => 'Mudar TAMANHO DA FONTE';
	@override String get font => 'Fonte';
	@override String get readchapter => 'Leia o cap??tulo';
	@override String get showhighlightedverse => 'Mostrar versos em destaque';
	@override String get downloadmoreversions => 'Baixe mais vers??es';
	@override String get suggestedusers => 'Usu??rios sugeridos para seguir';
	@override String get unfollow => 'Deixar de seguir';
	@override String get follow => 'Segue';
	@override String get searchforpeople => 'Procura por pessoas';
	@override String get viewpost => 'Ver postagem';
	@override String get viewprofile => 'Ver perfil';
	@override String get mypins => 'Meus Pins';
	@override String get viewpinnedposts => 'Ver postagens fixadas';
	@override String get personal => 'Pessoal';
	@override String get update => 'Atualizar';
	@override String get phonenumber => 'N??mero de telefone';
	@override String get showmyphonenumber => 'Mostrar meu n??mero de telefone aos usu??rios';
	@override String get dateofbirth => 'Data de nascimento';
	@override String get showmyfulldateofbirth => 'Mostrar minha data de nascimento completa para as pessoas que visualizam meu status';
	@override String get notifications => 'Notifica????es';
	@override String get notifywhenuserfollowsme => 'Notifique-me quando um usu??rio me seguir';
	@override String get notifymewhenusercommentsonmypost => 'Notifique-me quando usu??rios comentarem em minha postagem';
	@override String get notifymewhenuserlikesmypost => 'Notifique-me quando os usu??rios curtirem minha postagem';
	@override String get churchsocial => 'Igreja Social';
	@override String get shareyourthoughts => 'Compartilhe seus pensamentos';
	@override String get readmore => '...Consulte Mais informa????o';
	@override String get less => ' Menos';
	@override String get couldnotprocess => 'N??o foi poss??vel processar a a????o solicitada.';
	@override String get pleaseselectprofilephoto => 'Selecione uma foto de perfil para fazer upload';
	@override String get pleaseselectprofilecover => 'Selecione uma foto de capa para fazer upload';
	@override String get updateprofileerrorhint => 'Voc?? precisa preencher seu nome, data de nascimento, sexo, telefone e localiza????o antes de continuar.';
	@override String get gender => 'G??nero';
	@override String get male => 'Masculino';
	@override String get female => 'F??meo';
	@override String get dob => 'Data de nascimento';
	@override String get location => 'Localiza????o atual';
	@override String get qualification => 'Qualifica????o';
	@override String get aboutme => 'Sobre mim';
	@override String get facebookprofilelink => 'Link do perfil do Facebook';
	@override String get twitterprofilelink => 'Link do perfil do Twitter';
	@override String get linkdln => 'Link do perfil Linkedln';
	@override String get likes => 'Gosta';
	@override String get likess => 'Gosto (s)';
	@override String get pinnedposts => 'Minhas postagens fixadas';
	@override String get unpinpost => 'Liberar postagem';
	@override String get unpinposthint => 'Voc?? deseja remover esta postagem de suas postagens fixadas?';
	@override String get postdetails => 'Detalhes da postagem';
	@override String get posts => 'Postagens';
	@override String get followers => 'Seguidores';
	@override String get followings => 'Seguidores';
	@override String get my => 'Minhas';
	@override String get edit => 'Editar';
	@override String get delete => 'Excluir';
	@override String get deletepost => 'Apague a postagem';
	@override String get deleteposthint => 'Voc?? deseja deletar esta postagem? As postagens ainda podem aparecer nos feeds de alguns usu??rios.';
	@override String get maximumallowedsizehint => 'M??ximo de upload de arquivo permitido atingido';
	@override String get maximumuploadsizehint => 'O arquivo selecionado excede o limite de tamanho de arquivo para upload permitido.';
	@override String get makeposterror => 'N??o ?? poss??vel postar no momento, por favor clique para tentar novamente.';
	@override String get makepost => 'Fazer Postagem';
	@override String get selectfile => 'Selecione o arquivo';
	@override String get images => 'Imagens';
	@override String get shareYourThoughtsNow => 'Share your thoughts ...';
	@override String get photoviewer => 'Visualizador de fotos';
	@override String get nochatsavailable => 'Nenhuma conversa dispon??vel \n Clique no ??cone adicionar abaixo \npara selecionar usu??rios para bater papo';
	@override String get typing => 'Digitando...';
	@override String get photo => 'Foto';
	@override String get online => 'Conectados';
	@override String get offline => 'Desligado';
	@override String get lastseen => 'Visto pela ??ltima vez';
	@override String get deleteselectedhint => 'Esta a????o excluir?? as mensagens selecionadas. Observe que isso exclui apenas o seu lado da conversa, \n as mensagens ainda ser??o exibidas no dispositivo do seu parceiro';
	@override String get deleteselected => 'Apagar selecionado';
	@override String get unabletofetchconversation => 'N??o ?? poss??vel buscar \n sua conversa com \n';
	@override String get loadmoreconversation => 'Carregar mais conversas';
	@override String get sendyourfirstmessage => 'Envie sua primeira mensagem para \n';
	@override String get unblock => 'Desbloquear ';
	@override String get block => 'Quadra ';
	@override String get writeyourmessage => 'Escreva sua mensagem...';
	@override String get clearconversation => 'Conversa Clara';
	@override String get clearconversationhintone => 'Esta a????o ir?? limpar toda a sua conversa com ';
	@override String get clearconversationhinttwo => '.\n  Observe que isso apenas exclui o seu lado da conversa, as mensagens ainda ser??o exibidas no bate-papo de seus parceiros.';
	@override String get facebookloginerror => 'Something went wrong with the login process.\n, Here is the error Facebook gave us';
}
