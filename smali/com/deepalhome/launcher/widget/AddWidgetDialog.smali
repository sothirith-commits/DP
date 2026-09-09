.class public final Lcom/deepalhome/launcher/widget/AddWidgetDialog;
.super Lcom/deepalhome/launcher/base/BaseBottomSheetDialogFragment;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public binding:Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;

.field public magiskRevealTapCount:I

.field public onDragWidgetListener:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/widget/AddWidgetDialog$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0023

    invoke-direct {p0, v0}, Landroidx/fragment/app/DialogFragment;-><init>(I)V

    return-void
.end method

.method public static final access$requestAncestorsDisallowIntercept(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Lcom/deepalhome/launcher/widget/BaseWidgetView;Z)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static resolveGridSpan(I)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/widget/WidgetsView;->Companion:Lcom/deepalhome/launcher/widget/WidgetsView$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/widget/WidgetsView;->access$getCELL_WIDTH_AND_HEIGHT$cp()I

    move-result v1

    rem-int v2, p0, v1

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    div-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-lez p0, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->setStyle()V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f06038f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget p2, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->$r8$clinit:I

    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v0, 0x7f0e0023

    invoke-virtual {p2, p1, v0}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;

    const-string v0, "bind(...)"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->binding:Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;

    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->timeBtn:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->binding:Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p2, :cond_1

    new-instance v2, Lcom/deepalhome/launcher/widget/AddWidgetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/deepalhome/launcher/widget/AddWidgetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Landroid/view/View;)V

    iget-object p1, p2, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->binding:Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->radioGroup:Landroid/widget/RadioGroup;

    const p1, 0x7f0b0078

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final startWidgetDrag(Lcom/deepalhome/launcher/widget/BaseWidgetView;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->resolveGridSpan(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->resolveGridSpan(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/ClipData;

    new-instance v4, Landroid/content/ClipDescription;

    sget-object v5, Lcom/deepalhome/launcher/widget/WidgetInfo;->Companion:Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v0, v2}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->buildWidgetClipLabel(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "text/plain"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v0, Landroid/content/ClipData$Item;

    const-string v2, ""

    invoke-direct {v0, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v3, v4, v0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v0, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a000d

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    new-instance v4, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDrag$1;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDrag$1;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;I)V

    invoke-direct {v0, p1, v2, v4}, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;-><init>(Landroid/view/View;FLcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;)V

    const/16 v2, 0x300

    invoke-virtual {p1, v3, v0, p1, v2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    instance-of v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    :cond_2
    invoke-virtual {p0, v1, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->onDragWidgetListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method
