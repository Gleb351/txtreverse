unit UStack;

interface

  type
    //��� �������� �����
    tElem = char;
    //��������� �� �����
    tPtr = ^tNode;
    //����� ������
    tNode = record
      el : tElem;
      next : tPtr;
    end;
    //���� �� ��������� � ��������� �� ������ �����
    tStack = tPtr;

  //��������� ������������� ����� s
  procedure Init(var s:tStack);

  //������� �������� ����� s  �� �������
  function IsEmpty(var s:tStack):boolean; 

  //�������, ������� �������� ��������� ������� el � ���� s
  function TryPush(var s:tStack; el:tElem):boolean;

  //��������� ���������� �������� el � ���� s
  procedure Push(var s:tStack; el:tElem);

  //�������, ������� �������� ������� ������� el �� ����� s
  function TryPop(var s:tStack; var el:tElem ):boolean;

  //�������, ������� ��������� ������� el �� ����� s
  function Pop(var s:tStack):tElem; 

implementation

  procedure Init(var s:tStack);
  begin
    s := nil;
  end;

  function IsEmpty(var s:tStack):boolean;
  begin
    result := s = nil;
  end;

  function TryPush(var s:tStack; el:tElem):boolean;
  var t:tPtr;
  begin
    result := true;
    try
      new(t);
      t^.el := el;
      t^.next := s;
      s := t;
    except
      Result := false;
    end;
  end;

  procedure Push(var s:tStack; el:tElem);
  begin
    if not TryPush(s, el) then
      begin
        writeln('Stack is full');
        readln;
        halt(0);
      end;
  end;

  function TryPop(var s:tStack; var el:tElem ):boolean;
  var t:tPtr;
  begin
    result := not IsEmpty(s);
    if result then
      begin
        t := s;
        el := t^.el;
        s := t^.next;
        dispose(t);
      end;
  end;

  function Pop(var s:tStack):tElem;
  begin
    if not TryPop(s, result) then
      begin
        writeln('Stack is empty');
        readln;
        halt(0);
      end;
  end;

end.


