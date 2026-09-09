.class public final synthetic Lokhttp3/internal/Util$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;
.implements Landroidx/fragment/app/FragmentResultListener;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
.implements Lcom/koushikdutta/async/callback/WritableCallback;
.implements Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;
.implements Lcom/koushikdutta/async/callback/CompletedCallback;
.implements Lokhttp3/EventListener$Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    const-string v0, "$this_asFactory"

    iget-object p0, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/EventListener;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroidx/activity/result/ActivityResult;

    const-string v0, "this$0"

    iget-object p0, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v0, "file_browser_selected_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->onImageSelected:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    :goto_1
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 7

    const-string v0, "getInsets(...)"

    const/4 v1, 0x0

    const-string v2, "binding"

    const/4 v3, 0x0

    const-string v4, "<anonymous parameter 0>"

    const-string v5, "this$0"

    iget-object v6, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget p0, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    check-cast v6, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/Insets;->top:I

    iget-object p1, v6, Lcom/petterp/floatingx/imp/app/FxAppPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget v0, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->statsBarHeight:I

    if-eq v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "System--StatusBar---old-("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->statsBarHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "),new-("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/petterp/floatingx/util/FxLog;->v(Ljava/lang/String;)V

    iput p0, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->statsBarHeight:I

    :cond_0
    return-object p2

    :pswitch_1
    check-cast v6, Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {v6, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;->$r8$lambda$GIgpiQsyyJ87VQFmRVepCzKJMoU(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070362

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07035d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p0, p1

    iget-object p1, v6, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p1, v3, p0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p2

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    check-cast v6, Lcom/deepalhome/launcher/settings/SettingsFragment;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget p1, v6, Lcom/deepalhome/launcher/settings/SettingsFragment;->navBarInsetBottom:I

    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    if-eq p1, p0, :cond_2

    iput p0, v6, Lcom/deepalhome/launcher/settings/SettingsFragment;->navBarInsetBottom:I

    invoke-virtual {v6}, Lcom/deepalhome/launcher/settings/SettingsFragment;->updateNavBarInsets()V

    :cond_2
    return-object p2

    :pswitch_4
    sget p0, Lcom/deepalhome/launcher/HelperActivity;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/HelperActivity;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v6, Lcom/deepalhome/launcher/HelperActivity;->binding:Lcom/deepalhome/launcher/databinding/HelperActivityBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/HelperActivityBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    iget p2, p0, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {p1, v3, p2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, v6, Lcom/deepalhome/launcher/HelperActivity;->binding:Lcom/deepalhome/launcher/databinding/HelperActivityBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/HelperActivityBinding;->main:Landroid/widget/LinearLayout;

    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, v3, v3, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->onEnd()V

    return-void
.end method

.method public onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/cardview/widget/CardView$1;

    invoke-virtual {p0, p1, p2}, Landroidx/cardview/widget/CardView$1;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    sget v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->$r8$clinit:I

    iget-object p0, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "tab_type"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    :goto_0
    const-string p1, "action"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p2, "action_enter_multi_select"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    iget-boolean p2, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->isMultiSelectMode:Z

    if-nez p2, :cond_3

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->isMultiSelectMode:Z

    iget-object p2, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->dispatchSelectionChanged(I)V

    goto :goto_1

    :sswitch_1
    const-string p2, "action_export_selected"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->exportSelected()V

    goto :goto_1

    :sswitch_2
    const-string p2, "action_toggle_select_all"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->toggleSelectAll()V

    goto :goto_1

    :sswitch_3
    const-string p2, "action_exit_multi_select"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->exitMultiSelectMode()V

    goto :goto_1

    :sswitch_4
    const-string p2, "action_refresh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->refreshList()V

    goto :goto_1

    :sswitch_5
    const-string p2, "action_delete_selected"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->confirmDeleteSelected()V

    :cond_9
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3afd895a -> :sswitch_5
        -0x317cde2e -> :sswitch_4
        -0x14eccd86 -> :sswitch_3
        -0x9187c20 -> :sswitch_2
        0xfd4a2bd -> :sswitch_1
        0x35db3d72 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRefresh(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;)V
    .locals 1

    sget v0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->$r8$clinit:I

    iget-object p0, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;->loadData()V

    return-void
.end method

.method public onWriteable()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->writePending()V

    return-void
.end method

.method public perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 5

    iget-object p0, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->interactable:Z

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean p2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iget v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_1
    if-ne v1, v3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->clickToExpand:Z

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    :cond_5
    :goto_0
    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    move p0, v0

    :goto_2
    return p0
.end method
