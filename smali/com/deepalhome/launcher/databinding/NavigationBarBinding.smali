.class public abstract Lcom/deepalhome/launcher/databinding/NavigationBarBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final blurView:Leightbitlab/com/blurview/BlurView;

.field public final cardView:Landroidx/cardview/widget/CardView;

.field public final divider1:Landroid/view/View;

.field public final divider2:Landroid/view/View;

.field public final homeBtn:Landroid/widget/ImageView;

.field public final shortcutsView:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

.field public final volumeBtn:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Leightbitlab/com/blurview/BlurView;Landroidx/cardview/widget/CardView;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->cardView:Landroidx/cardview/widget/CardView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->divider1:Landroid/view/View;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->divider2:Landroid/view/View;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->homeBtn:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->shortcutsView:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

    iput-object p9, p0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->volumeBtn:Landroid/widget/ImageView;

    return-void
.end method
