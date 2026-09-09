.class public final Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final center:F

.field public final child:Landroid/view/View;

.field public final offsetCenter:F

.field public final range:Landroidx/cardview/widget/CardView$1;


# direct methods
.method public constructor <init>(Landroid/view/View;FFLandroidx/cardview/widget/CardView$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->child:Landroid/view/View;

    iput p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->center:F

    iput p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->offsetCenter:F

    iput-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->range:Landroidx/cardview/widget/CardView$1;

    return-void
.end method
