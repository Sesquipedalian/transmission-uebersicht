################################################################################
# This widget lets you monitor a remote instance of the Transmission BitTorrent
# client (https://transmissionbt.com) using its standard web interface.
#
# If you have set your Transmission web interface to require a password, you
# must first visit it in Safari and save the password in your keychain. Then
# when you load this widget, you will need to allow Übersicht to access the
# keychain item. A dialog box should pop up to ask you to grant Übersicht
# permission to do so, but if not you can open the Keychain Access application,
# double-click the keychain item, and then add Übersicht to the list of allowed
# applications in the keychain item's Access Control list.
################################################################################

################################################################################
# Set this to the URL of your Transmission web interface
url = 'http://example.com:9091/transmission/web/'
################################################################################

render: () -> """
	<iframe src="#{url}" frameborder="0"></iframe>
"""

style: """
	top: 0px
	right: calc(30% - 300px)
	width: 600px
	height: 450px

	box-shadow: 3px 3px 10px rgba(0,0,0,0.2)
	border: 1px solid rgba(0,0,0,0.2)
	border-radius: 6px
	box-sizing: border-box
	overflow: hidden

	iframe
		width: 100%
		height: 100%
 """

refreshFrequency: false
