property name : "XList"
property version : "1.5b"

property XText : module

(*!@references

XText || help:openbook='XText Help'
*)

(*!@title XList Reference
* Version : 1.5b
* Author : Tetsuro KURITA ((<tkurita@mac.com>))
<!--begin locale ja-->
リストを iterator, stack, queue などとして扱うスクリプトオブジェクト。
<!--begin locale en-->
XList provides a wapper object to treat AppleScript's list as iterator, stack and queue.
<!--end locale-->
*)

(*!@group Constructor Method *)

(*!
@abstruct 
<!--begin locale ja-->
XList オブジェクトのインスタンスを作ります。内容は設定されていません。
<!--begin locale en-->
Meke an instance of empty XList.
<!--end locale-->

@result script object : a new XList instance
*)
on make
	return make_with({})
end make

(*!
@abstruct 
<!--begin locale ja-->
与えたリストをもとに XList オブジェクトのインスタンスを作ります。
<!--begin locale en-->
Meke an instance of XList with given an AppleScript's  list object.
<!--end locale-->
@param　a_list (list)
@result script object : a new XList instance
*)
on make_with(a_list)
	set a_parent to me
	script XList
		property parent : a_parent
		property _contents : a_list
		property _length : count a_list
		property _n : 1
	end script
	
	return XList
end make_with

(*!
@abstruct
<!-- begin locale ja -->
((<make_with>)) と同じです。
<!-- begin locale en -->
A synonym of ((<make_with>))
<!-- end locale -->
@description
<!--begin locale ja-->
与えたリストをもとに XList オブジェクトのインスタンスを作ります。
<!--begin locale en-->
Meke an instance of XList with given an AppleScript's  list object.
<!--end locale-->
@param　a_list (list)
@result script object : a new XList instance
*)
on make_with_list(a_list)
	return make_with(a_list)
end make_with_list

(*!
@abstruct 
<!--begin locale ja-->
テキストを区切り文字で分割したリストをもとに XList オブジェクトのインスタンスを作ります。
<!--begin locale en-->
Meke an instance of XList with from a list splitting a text with a delimiter.
<!--end locale-->
@param　a_text (Unicode or string)
@param a_delimiter (Unicode or string)
@result script object : a new XList instance
*)
on make_with_text(a_text, a_delimiter)
	set pre_delim to AppleScript's text item delimiters
	set AppleScript's text item delimiters to a_delimiter
	set a_list to every text item of a_text
	set AppleScript's text item delimiters to pre_delim
	return make_with(a_list)
end make_with_text

(*!@group  Methods for Iterator *)

(*!
@abstruct
<!--begin locale ja-->
前回の ((<next>))() で取得した項目の次の要素を取得します。
<!--begin locale en-->
return an item in the list next to the item obtained by previous ((<next>))()
<!--end locale-->
@description
<!--begin locale ja-->
リストの最後の項目まで来ていて、次の項目が無い場合は、error number 1351 を発生します。
<!--begin locale en-->
When the last item have been already returned, error number 1351 is raised.
<!--end locale-->

@result anything
*)
on next()
	try
		set an_item to item (my _n) of my _contents
	on error msg number -1728
		if my _n > my _length then
			error "No next item." number 1351
		else
			error msg number -1728
		end if
	end try
	
	set my _n to (my _n) + 1
	return an_item
end next

on next_item()
	return next()
end next_item

(*!
@abstruct
<!--begin locale ja-->
((<next>))() で次の要素を取得できるかどうか判定します。
<!--begin locale en-->
check whether ((<next>))() can return a next item or not
<!--end locale-->
@description 
<!--begin locale ja-->
((<next>))() で最後の項目まで取得していたら false
<!--begin locale en-->
false should be returned, when the last item have been already returned with ((<next>))().
<!--end locale-->
@result boolean
*)
on has_next()
	return my _n is less than or equal to my _length
end has_next

(*!
@abstruct
<!--begin locale ja-->
直前の ((<next>))() で取得した要素と同じ要素を取得します。
<!--begin locale en-->
The item obtained by previous ((<next>))() is returned.
<!--end locale-->
@result anything
*)
on current_item()
	return item ((my _n) - 1) of my _contents
end current_item

(*!
@abstruct
<!--begin locale ja-->
直前の ((<next>))() で取得した要素のインデックス
<!--begin locale en-->
An index number of an item obtained by previous ((<next>))() is returned.
<!--end locale-->
@result integer
*)
on current_index()
	return (my _n) - 1
end current_index

(*!
@abstruct　
<!--begin locale ja-->
((<next>))() で取得するリスト項目の index を一つ巻き戻します。
<!--begin locale en-->
Decrements the index of the item obtained by ((<next>))(). i.e. same item can be obtained once more.
<!--end locale-->
*)
on decrement_index()
	if my _n > 1 then
		set my _n to (my _n) - 1
	end if
end decrement_index

(*!
@abstruct
<!--begin locale ja-->
((<next>))() で取得するリスト項目の index を一つ増やします。つまり、一つ項目をスキップさせます。
<!--begin locale en-->
Increments the index of the item obtained by ((<next>))(). i.e. skip an item.
<!--end locale-->

*)
on increment_index()
	if my _n > 1 then
		set my _n to (my _n) + 1
	end if
end increment_index

(*!
@abstruct
<!--begin locale ja-->
((<next>))() で取得するリスト項目をはじめに戻します。
<!--begin locale en-->
Make ((<next>))() return items form first.
<!--end locale-->
*)
on reset()
	set my _n to 1
end reset

(*!@group Stack and Quene *)

(*!
@abstruct
<!--begin locale ja-->
リストの最後に要素を付け加えます。
<!--begin locale en-->
Append an item at the end of the list.
<!--end locale-->
@param an_item(anything) : 
<!--begin locale ja-->リストに付け加える項目
<!--begin locale en-->an item to append into the list
<!--end locale-->
*)
on push(an_item)
	set end of my _contents to an_item
	set my _length to (my _length) + 1
end push

(*!
@abstruct
<!--begin locale ja-->
リストの最後の要素を取得して、リストから削除します。
<!--begin locale en-->
Obtain last item in the stored list, and remove the item.
<!--end locale-->
@result anything : 
<!--begin locale ja-->リストの最後の項目
<!--begin locale en-->last item in the list <!--end locale-->
*)
on pop()
	try
		set a_result to last item of my _contents
	on error
		return missing value
	end try
	
	try
		set my _contents to items 1 thru -2 of my _contents
	on error
		set my _contents to {}
	end try
	
	set my _length to (my _length) - 1
	return a_result
end pop

(*!
@abstruct
<!--begin locale ja-->
リストの先頭に要素を付け加えます。
<!--begin locale en-->
Append an item at the beginning of the list.
<!--end locale-->
@param an_item(anything) :
<!--begin locale ja-->リストに付け加える項目
<!--begin locale en-->an item to be appended
<!--end locale-->
*)
on unshift(an_item)
	set beginning of my _contents to an_item
	increment_index()
	set my _length to (my _length) + 1
	return me
end unshift

(*!
@abstruct
<!--begin locale ja-->
リストの先頭の要素を取得して、リストから削除します。
<!--begin locale en-->
Obtain first item in the list and remove it.
<!--end locale-->
@result anything : 
<!--begin locale ja-->リストの先頭の要素
<!--begin locale en-->first item in the list <!--end locale-->
*)
on shift()
	try
		set a_result to first item of my _contents
	on error
		return missing value
	end try
	
	set my _contents to rest of my _contents
	decrement_index()
	set my _length to (my _length) - 1
	return a_result
end shift


(*!@group Accessing List Items *)
(*!
@abstruct
<!--begin locale ja-->
要素の数を返します。
<!--begin locale en-->
Return number of elements
<!--end locale-->
@result integer
*)
on count_items()
	return count my _contents
end count_items

on item_counts()
	return count my _contents
end item_counts

on count
	return count my _contents
end count

(*!
@abstruct
<!--begin locale ja-->
指定したインデックスの要素を削除します。
<!--begin locale en-->
Delete an item specified with an index number.
<!--end locale-->
@param indexes(integer or list of interger) :
<!--begin locale ja-->削除する要素のインデックス、もしくはインデックスのリスト
<!--begin locale en-->an index number or list of indexes of items to delete
<!--end locale-->
@result list : 
<!--begin locale ja-->
削除された要素のリスト
<!--begin locale en-->
a list of deleted items form the XList contents
<!--end locale-->
*)
on delete_at(indexes)
	set indexes to indexes as list
	set a_list to {}
	
	repeat with n from 1 to length of indexes
		set an_index to item n of indexes
		--log "start delete_item"
		set end of a_list to item an_index of my _contents
		if an_index is 1 then
			set my _contents to rest of my _contents
		else if an_index is in {my _length, -1} then
			set my _contents to items 1 thru -2 of my _contents
		else
			set my _contents to (items 1 thru (an_index - 1) of my _contents) & (items (an_index + 1) thru -1 of my _contents)
		end if
		
		if (my _n > an_index) then
			set my _n to (my _n) + 1
		end if
		
		set my _length to (my _length) - 1
	end repeat
	--log "end delete_item"
	return a_list
end delete_at

(*!
@abstruct
<!--begin locale ja-->
指定したインデックスの要素を取得します。インデックスのリストを渡すと複数の項目を取得できます。
<!--begin locale en-->
Obtain an item specified with an index number. When a list of indexes is passed as an argument, multiple items will be obtained.
<!--end locale-->
@param an_index(integer or list of integer) : 
<!--begin locale ja-->要素のインデックスもしくはインデックスのリスト
<!--begin locale en-->an index number or a list of indexes of the items to obtain
<!--end locale-->
@result anything : 
<!--begin locale ja-->an_index 番目の要素。取得に失敗したときは error number -1728 は発生します。
<!--begin locale en-->Return an_index th item. error number -1728 will be rased when an item can not be obtained. <!--end locale-->
*)
on item_at(an_index)
	if class of an_index is not list then
		return item an_index of my _contents
	end if
	
	set a_list to {}
	set index_list to make_with(an_index)
	repeat while index_list's has_next()
		set end of a_list to item (inde_list's next()) of my _contents
	end repeat
	return a_list
end item_at

(*!
@abstruct
<!--begin locale ja-->
指定したインデックスの範囲の要素を取得します。
<!--begin locale en-->
Obtain items between two indexes.
<!--end locale-->
@param s_index(integer) : 
<!--begin locale ja-->最初の要素のインデックス
<!--begin locale en-->the first index number
<!--end locale-->
@param e_index(integer) : 
<!--begin locale ja-->最後の要素のインデックス
<!--begin locale en-->the last index number
<!--end locale-->
@result XList : 
<!--begin locale ja-->s_index から e_index までの要素の XList
<!--begin locale en-->An XList instance of elements from s_index to e_index <!--end locale-->
*)
on items_in_range(s_index, e_index)
	return make_with(items s_index thru e_index of my _contents)
end items_in_range

(*!
@abstruct
<!--begin locale ja-->
指定したインデックスの要素を設定します。
<!--begin locale en-->
set an item at a specified index.
<!--end locale-->
@param an_index(integer) : 
<!--begin locale ja-->要素のインデックス
<!--begin locale en-->an index number of the item to set
<!--end locale-->
*)
on set_item for a_value at an_index
	set item an_index of my _contents to a_value
end set_item

(*!
@abstruct
<!-- begin locale ja -->
インデックスで指定した要素を入れ替えます。
<!-- begin locale en -->
Exchange items specified with indexes
<!-- end locale -->
@param index1(integer) : 
<!-- begin locale ja -->入れ替える要素の一つ目のインデックス
<!-- begin locale en -->first index of an element to exchange
<!-- end locale -->
@param index2 (integer) : 
<!-- begin locale ja -->入れ替える要素の二つ目のインデックス
<!-- begin locale en -->second index of an element to exchange
<!-- end locale -->
*)
on exchange_items(index1, index2)
	set a_buff to item index1 of my _contents
	set item index1 of my _contents to item index2 of my _contents
	set item index2 of my _contents to a_buff
end exchange_items

(*!
@abstruct
<!--begin locale ja-->
オブジェクト an_item を含んでいるかどうか調べます。
<!--begin locale en-->
Check whether the object "an_item" is included in the XList instance or not.
<!--end locale-->

@param an_item(boolean)
@result anything : 
<!--begin locale ja--> an_item を含んでいたら true
<!--begin locale en--> if an_item is in the XList instance, ture will be returned. <!--end locale-->
*)
on has_item(an_item)
	return an_item is in my _contents
end has_item

(*!
@abstruct
<!--begin locale ja-->
オブジェクト an_item のインデックスを取得します。
<!--begin locale en-->
Obtain an index number of the object "an_item" in the XList instance.
<!--end locale-->

@param an_item(integer)
@result anything : 
<!--begin locale ja--> an_item のインデックス
<!--begin locale en--> an index number of an_item <!--end locale-->
*)
on index_of(an_item)
	if not has_item(an_item) then
		return 0
	end if
	
	set an_index to 0
	repeat with n from 1 to my _length
		if item n of my _contents is an_item then
			set an_index to n
			exit repeat
		end if
	end repeat
	
	return an_index
end index_of

(*!
@abstruct
<!--begin locale ja-->
内包しているリストのコピーを返します。
<!--begin locale en-->
return a copy of stored list.
<!--end locale-->
@result list 
*)
on all_items()
	copy my _contents to a_list
	return a_list
end all_items

(*!
@abstruct
<!--begin locale ja-->
内包しているリストを返します。
<!--begin locale en-->
return the stored list.
<!--end locale-->
@description
<!--begin locale ja-->
返り値のリストを変更すると、XList の内容を変更することになります。
できるかぎり、このメソッドを使わないことをおすすめします。
<!--begin locale en-->
Changing elements in retuend list means changing contents of the XList instance.
It is recommended not to use this method.
<!--end locale-->

@result list 
*)
on list_ref()
	return my _contents
end list_ref

(*!
@abstruct
<!--begin locale ja-->
与えられたリストの各要素を XList のインスタンスの末端に追加します。
<!--begin locale en-->
Add each item contained passed list at end of the reciver's XList instance.
<!--end locale-->
@param a_list(list)

@result me
*)
on add_from_list(a_list)
	set my _contents to my _contents & a_list
	set my _length to (my _length) + (count a_list)
	return me
end add_from_list

(*!@group Conversion to Text *)

(*!
@abstruct
<!--begin locale ja-->
与えられた区切り文字をつかって要素を文字列として結合します。((<XText>)) のインスタンスを返します。
<!--begin locale en-->
Join every elements with given a delimiters as ((<XText>))
<!--end locale-->
@param a_delimiter (string or Unicode text): 
<!--begin locale ja-->
区切り文字
<!--begin locale en-->
text to be used as a delimiter to join text list
<!--end locale-->
@result script object : a ((<XText>)) instance
*)
on as_xtext_with(a_delimiter)
	set a_text to as_unicode_with(a_delimiter)
	return XText's make_with(a_text)
end as_xtext_with

(*!
@abstruct
<!--begin locale ja-->
与えられた区切り文字をつかって、Unicode text としてすべての要素を結合します。
<!--begin locale en-->
Join every elements with given a delimiters as Unicode text
<!--end locale-->
@param a_delimiter (string or Unicode text): 
<!--begin locale ja-->
区切り文字
<!--begin locale en-->
text to be used as a delimiter to join text list
<!--end locale-->
@result Unicode text
*)
on as_unicode_with(a_delimiter)
	tell XText
		store_delimiters()
		set a_text to join_list(my _contents, a_delimiter)
		restore_delimiters()
	end tell
	return a_text
end as_unicode_with

(*!
@abstruct
<!--begin locale ja-->
((<as_unicode_with>)) と同じ。
与えられた区切り文字をつかって、Unicode text としてすべての要素を結合します。
<!--begin locale en-->
A synonym of ((<as_unicode_with>)).
Join every elements with given a delimiters as Unicode text.
<!--end locale-->
@param a_delimiter (string or Unicode text): 
<!--begin locale ja-->
区切り文字
<!--begin locale en-->
text to be used as a delimiter to join text list
<!--end locale-->
@result Unicode text
*)
on as_text_with(a_delimiter)
	return as_unicode_with(a_delimiter)
end as_text_with

(*!
@abstruct
<!--begin locale ja-->
与えられた区切り文字をつかって、 string としてすべての要素を結合します。
<!--begin locale en-->
Join every elements with given a delimiters as string
<!--end locale-->
@param a_delimiter (string or Unicode text): 
<!--begin locale ja-->
区切り文字
<!--begin locale en-->
text to be used as a delimiter to join text list
<!--end locale-->
@result string
*)
on as_string_with(a_delimiter)
	tell XText
		store_delimiters()
		set a_text to join_as_string(my _contents, a_delimiter)
		restore_delimiters()
	end tell
	return a_text
end as_string_with


(*!@group Loop with Script Object *)

(*!
@abstruct 
<!--begin locale ja-->
リストの要素を引数にしてスクリプトオブジェクトの do ハンドラを繰り返し実行します。
<!--begin locale en-->
Call do handler of given script object with each item in the XList as an argument.
<!--end locale-->
@description 
<!--begin locale ja-->
a_script は引数を一つだけとる do ハンドラを実装していなければなりません。do ハンドラの返り値は true もしくは false である必要があります。do ハンドラが false を 返すと処理を中止します。

do の引数にはリストの要素への参照が渡されます。contents に値を代入することにより、リストの要素を書き換えることができます。
<!--begin locale en-->
a_script must have a　do handler which require only argument. The do handler must return true or false. When the do handler return false, the process is stoped immediately.

A reference to an item of the list is passed to the do handler. You can change elements of the list by assining a value to contents of the reference.
<!--end locale-->
@param
<!--begin locale ja-->
a_script(スクリプトオブジェクト) : 引数を一つだけとる do ハンドラを持っている必要があります。 do ハンドラは真偽値を返さなくてはなりません。
<!--begin locale en-->
a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
<!--end locale-->
*)
on each(a_script)
	repeat with an_item in (a reference to my _contents)
		--if not (a_script's do(an_item)) then
		if (a_script's do(an_item) is false) then
			exit repeat
		end if
	end repeat
end each

(*!
@abstruct 
<!--begin locale ja-->
リストのすべての要素を引数にしてスクリプトオブジェクトの do ハンドラを実行します。do ハンドラの返り値を要素とした XList が結果になります。
<!--begin locale en-->
Call do handler of given script object with each items in the list as and argument. A XList consisting of the results of do handler is returned.
<!--end locale-->
@description 
<!--begin locale ja-->
a_script は引数を一つだけとる do ハンドラを実装していなければなりません。

do の引数にはリストの要素への参照が渡されます。contents に値を代入することにより、リストの要素を書き換えることができます。
<!--begin locale en-->
a_script must have a　do handler which require only argument.

A reference to an item of the list is passed to the do handler. You can change elements of the list by assining a value to contents of the reference.
<!--end locale-->
@param a_script(script object) :
<!--begin locale ja--> 引数を一つだけとる do ハンドラを持っている必要があります。
<!--begin locale en--> must have a do handler which require only argument.
<!--end locale-->
@result Instance of XList
*)
on map(a_script)
	set a_list to map_as_list(a_script)
	return make_with_list(a_list)
end map

(*!
@abstruct 
<!--begin locale ja-->
リストのすべての要素を引数にしてスクリプトオブジェクトの do ハンドラを実行します。do ハンドラの返り値のリストが結果になります。
<!--begin locale en-->
Call do handler of given script object with each items in the list as and argument. An AppleScript's list of the results of do handler is returned.
<!--end locale-->
@description 
<!--begin locale ja-->
a_script は引数を一つだけとる do ハンドラを実装していなければなりません。

do の引数にはリストの要素への参照が渡されます。contents に値を代入することにより、リストの要素を書き換えることができます。
<!--begin locale en-->
a_script must have a　do handler which require only argument.

A reference to an item of the list is passed to the do handler. You can change elements of the list by assining a value to contents of the reference.
<!--end locale-->
@param a_script(script object) :
<!--begin locale ja--> 引数を一つだけとる do ハンドラを持っている必要があります。
<!--begin locale en--> must have a do handler which require only argument.
<!--end locale-->
@result list
*)
on map_as_list(a_script)
	set a_list to {}
	repeat with an_item in (a reference to my _contents)
		set end of a_list to (a_script's do(an_item))
	end repeat
	return a_list
end map_as_list

(*!@group Make a copy of the instance *)

(*!
<!--begin locale ja-->

<!--begin locale en-->
Make a new instance which share internal list.
<!--end locale-->
@result XList
*)
on shallow_copy()
	set x_list to my make_with(my _contents)
	set x_list's _n to my _n
	return x_list
end shallow_copy

on deep_copy()
	set x_list to my make_with(all_items())
	set x_list's _n to my _n
	return x_list
end deep_copy

(*!
<!--begin locale ja-->

<!--begin locale en-->
a_script must have a　do handler which require only argument.

A reference to an item of the list is passed to the do handler. You can change elements of the list by assining a value to contents of the reference.
<!--end locale-->
@param a_script(script object) :
<!--begin locale ja--> 引数を一つだけとる do ハンドラを持っている必要があります。
<!--begin locale en--> must have a do handler which require only argument.
<!--end locale-->
@result list
*)
on interator()
	return my make_with(my _contents)
end interator

on log
	tell AppleScript to log (my dump())
end log

on dump()
	script XListDumper
		property an_index : 0
		on do(an_item)
			set an_index to an_index + 1
			set output to (an_index as Unicode text)
			if class of an_item is script then
				set dump_data to an_item's dump()
			else
				set dump_data to an_item as Unicode text
			end if
			return output & tab & dump_data
		end do
	end script
	set dump_list to map(XListDumper)
	dump_list's unshift("[" & my name & "]")
	return dump_list's as_unicode_with(return)
end dump

(*== private *)
on debug()
	tell (module loader)
		export(me)
		boot for me
		set Test to load module "Test"
	end tell
	set a_list to make_with({"a", "b"})
	a_list's delete_at(1)
	Test's assert_true(a_list's list_ref() is {"b"}, "Faild to delete_at")
	count a_list
	Test's assert_true(result is 1, "Faild to count")
end debug

on run
	--return debug()
	try
		show helpbook (path to me) with recovering InfoPlist
	on error msg number errno
		display alert (msg & return & errno)
	end try
end run


