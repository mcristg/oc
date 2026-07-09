
%{ #include <ShapeUpgrade_RemoveInternalWires.hxx> %}
%{ #include <ShapeUpgrade_Tool.hxx> %}
%{ #include <ShapeUpgrade_ShapeDivideArea.hxx> %}
class ShapeUpgrade_Tool
{
	ShapeUpgrade_Tool()=0;
};

class ShapeUpgrade_RemoveInternalWires : public ShapeUpgrade_Tool
{
	public:
	ShapeUpgrade_RemoveInternalWires(const TopoDS_Shape& theShape);
	bool Perform() ;
	TopoDS_Shape GetResult() const; 
};

%extend ShapeUpgrade_RemoveInternalWires
{
	void setMinArea(double d)
	{
		self->MinArea()=d;
	}

	double getMinArea()
	{
		return self->MinArea();
	}

	void setRemoveFaceMode(bool b)
	{
		self->RemoveFaceMode()=b;
	}
	
	bool getRemoveFaceMode()
	{
		return self->RemoveFaceMode();
	}
};

class ShapeUpgrade_ShapeDivide
{
	public:
	TopoDS_Shape Result() const;
	bool Perform(const bool newContext = true) ;
};

class ShapeUpgrade_ShapeDivideArea : public ShapeUpgrade_ShapeDivide
{
	public:
	ShapeUpgrade_ShapeDivideArea(const TopoDS_Shape& S);  
};

%extend ShapeUpgrade_ShapeDivideArea
{
	void setMaxArea(double d)
	{
		self->MaxArea()=d;
	}

	double getMaxArea()
	{
		return self->MaxArea();
	}
};

