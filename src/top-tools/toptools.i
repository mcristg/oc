
%{
#include <NCollection_Sequence.hxx>
#include <NCollection_HSequence.hxx>

typedef NCollection_Sequence<TopoDS_Shape> TopTools_SequenceOfShape;
typedef NCollection_HSequence<TopoDS_Shape> TopTools_HSequenceOfShape;
%}

class TopTools_HSequenceOfShape
{
 public:
  TopTools_HSequenceOfShape();
  bool IsEmpty () const;
  int Length () const;
  void Clear ();
  void Append (const TopoDS_Shape& anItem);
  void Prepend (const TopoDS_Shape& anItem);
  void Reverse ();
  void InsertBefore (const int anIndex, const TopoDS_Shape &anItem);
  void InsertAfter (const int anIndex, const TopoDS_Shape &anItem);
  void Exchange (const int anIndex, const int anOtherIndex);
  void SetValue (const int anIndex, const TopoDS_Shape& anItem);
  const TopoDS_Shape&	Value (const int anIndex) const;
  TopoDS_Shape& ChangeValue (const int anIndex);
  void Remove (const int anIndex);
  void Remove (const int fromIndex, const int toIndex);
  const TopTools_SequenceOfShape& Sequence () const ;
};
%{
#include <NCollection_List.hxx>

typedef NCollection_List<TopoDS_Shape> TopTools_ListOfShape;
%}
class TopTools_ListOfShape {
 public:
  TopTools_ListOfShape();
  TopoDS_Shape& Append(const TopoDS_Shape& item);
  TopoDS_Shape& Prepend(const TopoDS_Shape& item);
};
%extend TopTools_ListOfShape
{
  void Delete() {
    self->~TopTools_ListOfShape();
  }
}
%{
#include <TopTools_ShapeMapHasher.hxx>
#include <NCollection_Map.hxx>

typedef NCollection_Map<TopoDS_Shape, TopTools_ShapeMapHasher> TopTools_MapOfShape;
  %}
class TopTools_MapOfShape {
 public:
  TopTools_MapOfShape();
  bool Add(const TopoDS_Shape &aKey);
  bool Contains(const TopoDS_Shape &aKey) const;
};
%{
typedef NCollection_Map<TopoDS_Shape, TopTools_ShapeMapHasher>::Iterator
  TopTools_MapIteratorOfMapOfShape;
  %}

class TopTools_MapIteratorOfMapOfShape {
 public:
  TopTools_MapIteratorOfMapOfShape (const TopTools_MapOfShape &aMap);
  const TopoDS_Shape & 	Key () const;
};
