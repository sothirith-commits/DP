.class public Lcom/flyco/tablayout/widget/MsgView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field public backgroundColor:I

.field public final context:Landroid/content/Context;

.field public cornerRadius:I

.field public final gd_background:Landroid/graphics/drawable/GradientDrawable;

.field public isRadiusHalfHeight:Z

.field public isWidthHeightEqual:Z

.field public strokeColor:I

.field public strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lcom/flyco/tablayout/widget/MsgView;->gd_background:Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/flyco/tablayout/widget/MsgView;->context:Landroid/content/Context;

    sget-object v1, Lcom/flyco/tablayout/R$styleable;->MsgView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/widget/MsgView;->backgroundColor:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/widget/MsgView;->cornerRadius:I

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/widget/MsgView;->strokeWidth:I

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/widget/MsgView;->strokeColor:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/flyco/tablayout/widget/MsgView;->isRadiusHalfHeight:Z

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/flyco/tablayout/widget/MsgView;->isWidthHeightEqual:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/widget/MsgView;->backgroundColor:I

    return p0
.end method

.method public getCornerRadius()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/widget/MsgView;->cornerRadius:I

    return p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/widget/MsgView;->strokeColor:I

    return p0
.end method

.method public getStrokeWidth()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/widget/MsgView;->strokeWidth:I

    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/flyco/tablayout/widget/MsgView;->isRadiusHalfHeight:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/widget/MsgView;->setCornerRadius(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/flyco/tablayout/widget/MsgView;->setBgSelector()V

    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/flyco/tablayout/widget/MsgView;->isWidthHeightEqual:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p1}, Landroid/widget/TextView;->onMeasure(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/widget/MsgView;->backgroundColor:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/widget/MsgView;->setBgSelector()V

    return-void
.end method

.method public final setBgSelector()V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget-object v1, p0, Lcom/flyco/tablayout/widget/MsgView;->gd_background:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/flyco/tablayout/widget/MsgView;->backgroundColor:I

    iget v3, p0, Lcom/flyco/tablayout/widget/MsgView;->strokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v2, p0, Lcom/flyco/tablayout/widget/MsgView;->cornerRadius:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget v2, p0, Lcom/flyco/tablayout/widget/MsgView;->strokeWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const v2, -0x10100a7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/flyco/tablayout/widget/MsgView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/flyco/tablayout/widget/MsgView;->cornerRadius:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/widget/MsgView;->setBgSelector()V

    return-void
.end method

.method public setIsRadiusHalfHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/widget/MsgView;->isRadiusHalfHeight:Z

    invoke-virtual {p0}, Lcom/flyco/tablayout/widget/MsgView;->setBgSelector()V

    return-void
.end method

.method public setIsWidthHeightEqual(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/widget/MsgView;->isWidthHeightEqual:Z

    invoke-virtual {p0}, Lcom/flyco/tablayout/widget/MsgView;->setBgSelector()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/widget/MsgView;->strokeColor:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/widget/MsgView;->setBgSelector()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/flyco/tablayout/widget/MsgView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/flyco/tablayout/widget/MsgView;->strokeWidth:I

    invoke-virtual {p0}, Lcom/flyco/tablayout/widget/MsgView;->setBgSelector()V

    return-void
.end method
