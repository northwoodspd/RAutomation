## 1.0.0 / 2021-01-29

* Update ffi dependency to ~> 1.14.

## 1.0.0 / 2019-12-11

* Update ffi dependency to ~> 1.11.0.
* Use Visual Studio 2019 Build Tools for running tests.

## 0.17.0 / 2014-09-29

### Win32 adapter

* Fix searching locators by hwnd. See more at issue #96.

## 0.16.0 / 2014-09-29

* Loosen up ffi dependency due to fixed segfault problem. See more at issue #81.

## 0.15.0 / 2014-06-01

* Fixes #send_keys with special characters. Issue #92.

## 0.14.1 / 2014-02-05

* Set ffi 1.9.0 as a dependency for now because newer versions are broken. See more at issue #81.

## 0.14.0 / 2014-02-05

### MsUia adapter

* Add SelectList#select and SelectList#clear.
* Add Table#select and Table#clear.
* Add Table#selected_rows.
* Improve performance of table Row lookups.
* SelectList#options accepts :index and :text (Regexp or String).
* Window#child in ms_uia works for popup windows as well.

## 0.13.0

### MsUia adapter

* Added #select and #clear into SelectList::SelectListOption for multi-select support
* Removed SelectList#select and SelectList#set
* Added #select, #selected? and #clear to Table::Row for multi-select support
* Removed Table#select and Table#selected?
* Fixed an issue with selecting ListBox items that our outside of the viewable area

## 0.12.0 / 2013-09-05

### MsUia adapter

* Add Control#help_text to relay ToolTip information

## 0.11.0 / 2013-08-10

### MsUia adapter

* Add support for Window#spinner

## 0.10.0 / 2013-07-26

### MsUia adapter

* Fixed an issue with trying to interact with a button after it goes away
* Add support for Window#tab_control

## 0.9.4 / 2013-07-23

* Add license part of gemspec. Closes #70.

## 0.9.3 / 2013-07-23

### MsUia adapter

* Added the ability to limit the scope to children only when looking for a control
* Fixed issues with ListBox controls not firing index change events

## 0.9.2 / 2013-05-19

### Win32 adapter

* Window#send_keys supports now :dash, :slash and :backslash. Closes #64.

### MsUia adapter

* Ability to get and set the text of a multi-line text control that only supports the TextPattern.
* Add some caching to speed up locating controls.
* Fix issue #67 that happens when clicking on controls.

### AutoIt adapter

* Add deprecation warning.

## 0.9.1 / 2013-04-26

### MsUia adapter

* Ability to interact with controls that do not have native window handles (for example WPF applications).

## 0.9.0 / 2013-04-22

### MsUia adapter

* Add support for :name locator.
* Add support for Window#value_control.
* Add Table#headers.
* Add Table#values.
* Control#exists? uses now uia code.
* ControlType.Document is also considered as a TextField.
* Table#select and Table#selected? use 0-based indexing.
* Table#select supports value too. 

### Win32 adapter

* Add support for "[", "]" and "'" characters when using Window#send_keys. Fixes #61.

## 0.8.0 / 2012-12-26

### MsUia adapter

* Add Control#collapse for collapsing values in collapsable items.
* Add Control#expand for expanding values in expandable items.
* Add Row#cell(s).
* Add Table#cell(s).
* Add Table#row(s).
* Add Window#menu for selecting menu items.
* Fire change events when SelectList selections have been changed.
* Window#child instantiates MsUia adapter Window.

## 0.7.3 / 2012-10-31

### Win32 adapter

* Add support for PasswordField.

### AutoIt adapter

* Show error message when registration of AutoIt dll fails.

## 0.7.2 / 2012-03-18

### Win32 adapter

* add mouse API with Window#mouse method
* add Mouse#move, #position, #click, #press and #release methods

### AutoIt adapter

* support the same mouse API as Win32 adapter

## 0.7.1 / 2012-02-26

### Win32 adapter

* add Window#dimensions to get coordinates of the window
* add Window#move to move/resize the window
* fix Window#child not to raise any exceptions for cases where window isn't technically a child

## Version 0.7.0 / 2012-02-23

### All adapters

* renamed WinFfi adapter to Win32 adapter
* added experimental MsUia adapter
* added support for JRuby
* Window.windows accepts locators too
* added Window#class_names for retrieving internal class names of the window and it's controls
* default locator is :index => 0 when nothing else specified

### Win32 adapter

* Window#send_keys has now syntax similar to WatirSpec (https://github.com/watir/watirspec/blob/master/element_spec.rb#L206-249)
* added TextField#send_keys

### AutoIt adapter

* added Window#mouse_move, #mouse_click, #mouse_position, #press_mouse and #release_mouse methods for AutoIt adapter

## Version 0.6.3 / 2011-07-16

* use current window's handle (hwnd) in WinFfi::Window#child method

## Version 0.6.2 / 2011-07-07

### WinFFI adapter

* loading lazily oleacc.dll
* loading lazily uia_dll.rb due to problems on certain Windows XP machines

## Version 0.6.1 / 2011-07-05

### WinFFI adapter

* Fixed it for Ruby 1.9.2.

## Version 0.6.0 / 2011-07-03

### WinFFI adapter

* Window#send_keys now accepts only String argument similar to AutoIt's Send function.
* added Table#strings, #select, #selected? methods.
* added Label element support with #value method.
* added #has_focus? and #set_focus methods to controls.
* added possibility to search controls by automation id as :id.
* added #enabled? and #disabled? methods for controls.
* added Window#control and #controls methods for accessing controls generally.
* added SelectList#option method.
* added ListBox element support with #count, #items, #exist?, #selected? and #select methods.

## Version 0.5.1 / 2011-01-30

### All adapters

* added Window.windows, #windows, #buttons and #text_fields methods to retrieve collection of elements and use them with Enumerable/Array methods.

### WinFFI adapter

* added Window#child method for searching child windows and popups
* added initial support for Radio, Checkbox, SelectList and Table

### AutoIt adapter

* allow to search windows by PID

## Version 0.4.0 / 2010-12-23

* allow to search windows without text (like empty Notepad window for example).
* added possibility to use block for #click to specify successful clicking condition.
* renamed :ffi adapter to :win_ffi because FFI may be used on other platforms too.

## Version 0.3.0 / 2010-12-18

* added Ffi adapter specific method Window#child which searches for child windows and popups

## Version 0.2.1 / 2010-12-17

* added yard options for documentation

## Version 0.2.0 / 2010-12-17

* added Window#pid method

## Version 0.1.0 / 2010-12-14

* added new default adapter for Windows: FFI
* changes for AutoIt adapter:
  - added 0-based :index locator for window locators to search for windows with the same criteria.
  - renamed text_field and button locator :instance to :index instead.
  - :class_name locator is not allowed anymore. Use :class and :index together instead.
  - use :value for button locator instead of :text

## Version 0.0.4 / 2010-10-27

* most Window, Button and TextField methods wait until the object exists. Use RAutomation::Window.wait_timeout= to set timeout before failing. Default is 60 seconds.

## Version 0.0.3 / 2010-10-15

* RAutomation didn't load AutoIt correctly if it wasn't installed before

## Version 0.0.2 / 2010-10-14

* using :value locator for buttons instead of :text
* searching only visible windows with some text on them

## Version 0.0.1 / 2010-10-13

* Initial release
