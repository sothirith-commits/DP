.class public final Lcom/deepalhome/launcher/settings/BlePairingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

.field public breathAnimatorSet:Landroid/animation/AnimatorSet;

.field public pairingCompleted:Z

.field public rippleAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/settings/BlePairingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/settings/BlePairingActivity$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static crossfadeText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0, p1}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0020

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "setContentView(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    new-instance v0, Lcom/deepalhome/launcher/settings/BlePairingActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/settings/BlePairingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/BlePairingActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p1, :cond_5

    new-instance v2, Lcom/deepalhome/launcher/settings/BlePairingActivity$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/settings/BlePairingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/BlePairingActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->btnRetry:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz p1, :cond_4

    new-instance v1, Lcom/deepalhome/launcher/settings/BlePairingActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/settings/BlePairingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/BlePairingActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lokhttp3/logging/Utf8Kt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v5, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;

    invoke-direct {v5, p0, v0}, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;-><init>(Lcom/deepalhome/launcher/settings/BlePairingActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    const-string v4, "android.permission.BLUETOOTH_SCAN"

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    const/16 v9, 0x1f

    if-lt p1, v9, :cond_0

    new-array p1, v6, [Ljava/lang/String;

    aput-object v4, p1, v5

    aput-object v3, p1, v0

    aput-object v8, p1, v7

    goto :goto_0

    :cond_0
    new-array p1, v6, [Ljava/lang/String;

    aput-object v2, p1, v5

    aput-object v1, p1, v0

    aput-object v8, p1, v7

    :goto_0
    array-length v10, p1

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_3

    aget-object v12, p1, v11

    invoke-static {p0, v12}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v9, :cond_2

    new-array p1, v6, [Ljava/lang/String;

    aput-object v4, p1, v5

    aput-object v3, p1, v0

    aput-object v8, p1, v7

    goto :goto_2

    :cond_2
    new-array p1, v6, [Ljava/lang/String;

    aput-object v2, p1, v5

    aput-object v1, p1, v0

    aput-object v8, p1, v7

    :goto_2
    const/16 v0, 0x3e9

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->startPairing()V

    :goto_3
    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->stopRippleAnimation()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->stopBreathAnimation()V

    sget-object p0, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/deepalhome/tuotuotie/Tuotuotie;->initialized:Z

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepalhome/tuotuotie/Tuotuotie;->pairingManager$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/tuotuotie/BlePairingManager;

    invoke-virtual {p0, v0}, Lcom/deepalhome/tuotuotie/BlePairingManager;->stopPairing(Z)V

    :goto_0
    sget-object p0, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/mitemp/MiTemp;->stopPairing(Z)V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "grantResults"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_3

    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    array-length p1, p3

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_1

    aget v1, p3, v0

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->startPairing()V

    goto :goto_2

    :cond_2
    const p1, 0x7f130136

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final startPairing()V
    .locals 19

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->pairingCompleted:Z

    sget-object v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->initialized:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->pairingManager$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/tuotuotie/BlePairingManager;

    invoke-virtual {v0, v1}, Lcom/deepalhome/tuotuotie/BlePairingManager;->stopPairing(Z)V

    sget-object v2, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v3, "Start pairing process"

    const-string v4, "BlePairingManager"

    invoke-static {v2, v4, v3}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/deepalhome/tuotuotie/BlePairingManager;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lcom/deepalhome/tuotuotie/BlePairingState$Scanning;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePairingState$Scanning;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/deepalhome/tuotuotie/BlePairingManager;->foundDevice:Lcom/deepalhome/tuotuotie/BleDevice;

    new-instance v3, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v5, 0x10

    invoke-direct {v3, v5, v0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v3, v0, Lcom/deepalhome/tuotuotie/BlePairingManager;->scanTimeout:Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    iget-object v5, v0, Lcom/deepalhome/tuotuotie/BlePairingManager;->handler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v3, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceStorage;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->getAllDevices()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v6, v6, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    sget-object v5, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Existing device count: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    new-instance v6, Lcom/deepalhome/tuotuotie/BlePairingManager$startPairing$2;

    invoke-direct {v6, v0, v3}, Lcom/deepalhome/tuotuotie/BlePairingManager$startPairing$2;-><init>(Lcom/deepalhome/tuotuotie/BlePairingManager;Ljava/util/Set;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasScanPermission(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, "android.permission.BLUETOOTH_SCAN"

    const/16 v7, 0x1f

    const/4 v8, 0x1

    const-string v9, "BleDeviceManager"

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1

    move-object v3, v4

    :cond_1
    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-ne v0, v8, :cond_2

    move v0, v8

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Start scan failed: missing permission "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", adapterEnabled="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_3
    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_6

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-ne v0, v8, :cond_5

    move v0, v8

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start scan failed: bluetoothLeScanner unavailable, adapterEnabled="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    sget-object v10, Lcom/deepalhome/tuotuotie/BleDeviceManager;->scanCallback:Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

    if-eqz v10, :cond_7

    const-string v11, "Stop old scan before starting new scan"

    invoke-static {v9, v11, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v10}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->stopScanSafely(Landroid/bluetooth/le/ScanCallback;)V

    :cond_7
    const-string v10, "Start BLE scan"

    invoke-static {v5, v9, v10}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

    const/4 v10, 0x0

    invoke-direct {v5, v10, v6}, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;-><init>(ILjava/lang/Object;)V

    sput-object v5, Lcom/deepalhome/tuotuotie/BleDeviceManager;->scanCallback:Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasScanPermission(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_8

    move-object v3, v4

    :cond_8
    const-string v0, "Skip BLE scan: missing permission "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Start BLE scan failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v4, v3}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/mitemp/MiTemp;->stopPairing(Z)V

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_a

    invoke-static {v0, v2, v8, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_a
    sput-object v2, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v4, v4, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->knownAddressesAtPairingStart:Ljava/util/Set;

    sput-object v2, Lcom/deepalhome/mitemp/MiTemp;->pairingTargetAddress:Ljava/lang/String;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->_pairingFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lcom/deepalhome/mitemp/MiTempPairingState$Scanning;->INSTANCE:Lcom/deepalhome/mitemp/MiTempPairingState$Scanning;

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;

    move-result-object v0

    iget-object v3, v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    :cond_c
    iget-object v4, v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/deepalhome/mitemp/MiThermometerUiState;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-ne v6, v8, :cond_d

    move v10, v8

    goto :goto_6

    :cond_d
    move v10, v1

    :goto_6
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0xfe

    invoke-static/range {v9 .. v18}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v1, 0x2

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-ne v5, v8, :cond_12

    sget-object v5, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->INSTANCE:Lcom/deepalhome/mitemp/MiTempPermissionHelper;

    iget-object v6, v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->appContext:Landroid/content/Context;

    const-string v7, "appContext"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->hasRequiredPermissions(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v3, "Missing Bluetooth permission, cannot scan"

    invoke-virtual {v0, v3}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    invoke-virtual {v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->stopScan()V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v3

    if-nez v3, :cond_f

    const-string v3, "BluetoothLeScanner unavailable"

    invoke-virtual {v0, v3}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    new-instance v5, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v5, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v5

    new-instance v6, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v0}, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;-><init>(ILjava/lang/Object;)V

    iput-object v6, v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->scanCallback:Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

    invoke-virtual {v3, v2, v5, v6}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    const-string v3, "Start scanning LYWSD03MMC"

    invoke-virtual {v0, v3}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :cond_10
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/deepalhome/mitemp/MiThermometerUiState;

    iget-object v3, v5, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    if-nez v3, :cond_11

    sget-object v3, Lcom/deepalhome/mitemp/MiConnectionStatus;->SCANNING:Lcom/deepalhome/mitemp/MiConnectionStatus;

    :goto_7
    move-object v8, v3

    goto :goto_8

    :cond_11
    iget-object v3, v5, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    goto :goto_7

    :goto_8
    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v14, 0xf1

    invoke-static/range {v5 .. v14}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_12
    const-string v3, "Bluetooth not enabled, cannot scan"

    invoke-virtual {v0, v3}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :goto_9
    new-instance v7, Lcom/deepalhome/mitemp/MiTemp$startPairing$2;

    invoke-direct {v7, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    sget-object v4, Lcom/deepalhome/mitemp/MiTemp;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->pairingTimeoutJob:Lkotlinx/coroutines/Job;

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tuotuotie.init() not called"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final stopBreathAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->breathAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->breathAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    const-string v2, "binding"

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivBluetooth:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivBluetooth:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final stopRippleAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->rippleAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->rippleAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    const-string v1, "binding"

    if-eqz p0, :cond_4

    if-eqz p0, :cond_3

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ripple3:Landroid/view/View;

    iget-object v1, p0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ripple1:Landroid/view/View;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ripple2:Landroid/view/View;

    filled-new-array {v1, p0, v0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
