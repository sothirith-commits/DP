.class public final Landroidx/viewpager/widget/ViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# instance fields
.field public gravity:I

.field public isDecor:Z

.field public needsMeasure:Z

.field public position:I

.field public widthFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    return-void
.end method
