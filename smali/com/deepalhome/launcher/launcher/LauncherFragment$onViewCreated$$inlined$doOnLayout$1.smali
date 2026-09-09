.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    if-lez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavWidthCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "binding"

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object p0

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/navigation/NavigationBar;->startBlur(Landroid/view/ViewGroup;)V

    return-void

    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavHeightCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    :cond_3
    return-void

    :pswitch_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-lez p2, :cond_5

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavHeightCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    cmpg-float p2, p2, p3

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavHeightCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/window/AppWindowsManager;->setExtraBottomInset(I)V

    :cond_5
    :goto_0
    return-void

    :pswitch_2
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavWidthCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
