.class public final Lcom/deepalhome/launcher/navigation/NavigationBar;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/NavigationBarBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private onFolderViewClickListener:Landroid/view/View$OnClickListener;

.field private onHomeBtnClickListener:Landroid/view/View$OnClickListener;

.field private onHomeBtnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final padding:I

.field private volumePopupWindow:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;


# direct methods
.method public static synthetic $r8$lambda$uo2cevZAkeMQONDBNH1Ctbow0Go(Lcom/deepalhome/launcher/navigation/NavigationBar;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/navigation/NavigationBar;->onInit$lambda$1(Lcom/deepalhome/launcher/navigation/NavigationBar;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/deepalhome/launcher/navigation/NavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700b7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->padding:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/NavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final blurOverlayColor()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060028

    goto :goto_0

    :cond_0
    const v0, 0x7f060024

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private static final onInit$lambda$1(Lcom/deepalhome/launcher/navigation/NavigationBar;Landroid/view/View;)V
    .locals 11

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->volumePopupWindow:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    if-nez p1, :cond_0

    new-instance p1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p1, v0, v1}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->volumePopupWindow:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v2, v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->cardView:Landroidx/cardview/widget/CardView;

    sget-object v4, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;->END:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v3, p0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->cardView:Landroidx/cardview/widget/CardView;

    sget-object v5, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;->BOTTOM:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    sget-object v6, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->CONTAINER_START:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    new-instance p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const v10, 0xffe0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;-><init>(Landroid/view/View;Landroid/view/View;Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;Landroid/widget/ImageView;Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;I)V

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->show(Lcom/deepalhome/launcher/navigation/VolumePopupWindow$AnchorSpec;)V

    return-void
.end method

.method private final updateActionIcons()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060099

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const-string v1, "valueOf(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->homeBtn:Landroid/widget/ImageView;

    const v2, 0x7f0800c9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->homeBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->volumeBtn:Landroid/widget/ImageView;

    const v2, 0x7f080272

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->volumeBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e00bd

    return p0
.end method

.method public final getOnFolderViewClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->onFolderViewClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public final getOnHomeBtnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->onHomeBtnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public final getOnHomeBtnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->onHomeBtnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->volumePopupWindow:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->volumePopupWindow:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public onInit()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->homeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->onHomeBtnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->volumeBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/NavigationBar;->blurOverlayColor()I

    move-result p0

    invoke-virtual {v0, p0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->volumePopupWindow:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->volumePopupWindow:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public final setOnFolderViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->shortcutsView:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->setOnFolderViewClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->onFolderViewClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setOnHomeBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->homeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->onHomeBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setOnHomeBtnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->homeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->onHomeBtnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public final startBlur(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "rootView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/deepalhome/launcher/navigation/NavigationBar;->padding:I

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f06038f

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v2, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v2}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v1, p1, v2}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v0, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/NavigationBar;->blurOverlayColor()I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setOverlayColor(I)Leightbitlab/com/blurview/BlurController;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v2, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v2}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v0, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/NavigationBar;->blurOverlayColor()I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setOverlayColor(I)Leightbitlab/com/blurview/BlurController;

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v1, "blurView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    return-void
.end method

.method public updateUIMode(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/NavigationBar;->updateActionIcons()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->divider1:Landroid/view/View;

    const v1, 0x7f0801f2

    const v2, 0x7f0801f3

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->divider2:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/NavigationBarBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/NavigationBar;->blurOverlayColor()I

    move-result p0

    invoke-virtual {p1, p0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    return-void
.end method
