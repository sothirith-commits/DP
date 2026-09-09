.class public abstract Lcom/deepalhome/launcher/databinding/CompassClockWidgetViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final blurView:Leightbitlab/com/blurview/BlurView;

.field public final compassClockView:Lcom/deepalhome/launcher/time/CompassClockView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Leightbitlab/com/blurview/BlurView;Lcom/deepalhome/launcher/time/CompassClockView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/CompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/CompassClockWidgetViewBinding;->compassClockView:Lcom/deepalhome/launcher/time/CompassClockView;

    return-void
.end method
