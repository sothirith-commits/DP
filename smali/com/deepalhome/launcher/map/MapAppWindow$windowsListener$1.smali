.class public final Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/window/BaseAppWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/window/BaseAppWindow;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;->this$0:Lcom/deepalhome/launcher/window/BaseAppWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onWindowsDismiss$com$deepalhome$launcher$map$MapAppWindow$windowsListener$1()V
    .locals 0

    return-void
.end method

.method private final onWindowsDismissStart$com$deepalhome$launcher$music$MusicAppWindow$windowsChangedListener$1()V
    .locals 0

    return-void
.end method

.method private final onWindowsShow$com$deepalhome$launcher$map$MapAppWindow$windowsListener$1()V
    .locals 0

    return-void
.end method

.method private final onWindowsShowComplete$com$deepalhome$launcher$music$MusicAppWindow$windowsChangedListener$1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onWindowsDismiss()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;->this$0:Lcom/deepalhome/launcher/window/BaseAppWindow;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->floatBtn:Landroid/widget/ImageView;

    sget-object v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->isShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onWindowsDismissStart()V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->hide()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onWindowsShow()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;->this$0:Lcom/deepalhome/launcher/window/BaseAppWindow;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->floatBtn:Landroid/widget/ImageView;

    sget-object v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->isShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onWindowsShowComplete()V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;->this$0:Lcom/deepalhome/launcher/window/BaseAppWindow;

    check-cast p0, Lcom/deepalhome/launcher/map/MapAppWindow;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
