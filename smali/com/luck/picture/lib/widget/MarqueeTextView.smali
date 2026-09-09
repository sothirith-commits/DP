.class public Lcom/luck/picture/lib/widget/MarqueeTextView;
.super Lcom/luck/picture/lib/widget/MediumBoldTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/widget/MediumBoldTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final isFocused()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isSelected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
