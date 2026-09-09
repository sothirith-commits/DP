.class public abstract Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final blurView:Leightbitlab/com/blurview/BlurView;

.field public final cardView:Landroidx/cardview/widget/CardView;

.field public final gridHost:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Leightbitlab/com/blurview/BlurView;Landroidx/cardview/widget/CardView;Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->cardView:Landroidx/cardview/widget/CardView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->gridHost:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    return-void
.end method
