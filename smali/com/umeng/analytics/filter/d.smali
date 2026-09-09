.class public final Lcom/umeng/analytics/filter/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;


# static fields
.field public static volatile instance:Lcom/umeng/analytics/filter/d;


# instance fields
.field public final synthetic $r8$classId:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Lcom/umeng/analytics/filter/d;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    new-instance p2, Lcom/umeng/commonsdk/stateless/c;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/umeng/commonsdk/stateless/c;-><init>(Landroid/content/Context;Z)V

    new-instance p1, Lcom/bumptech/glide/util/GlideSuppliers$1;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/util/GlideSuppliers$1;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;

    invoke-direct {p2, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;-><init>(Lcom/umeng/analytics/filter/d;)V

    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/ActiveResources;-><init>(Lcom/bumptech/glide/util/GlideSuppliers$1;Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;)V

    iput-object v0, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/lang/Object;

    new-instance p2, Lcom/deepalhome/launcher/music/FloatingResizePreviewOverlay$PreviewView;

    invoke-direct {p2, p1}, Lcom/deepalhome/launcher/music/FloatingResizePreviewOverlay$PreviewView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lcom/umeng/analytics/filter/d;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Ljava/util/ArrayList;Lcom/bumptech/glide/module/AppGlideModule;)V
    .locals 0

    const/4 p3, 0x3

    iput p3, p0, Lcom/umeng/analytics/filter/d;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/filter/d;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/umeng/analytics/filter/d;->e:Z

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    :goto_1
    array-length p2, p1

    div-int/lit8 p2, p2, 0x4

    if-ge v0, p2, :cond_1

    mul-int/lit8 p2, v0, 0x4

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    add-int/2addr v1, p2

    iget-object p2, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_0
    const-string p2, "\u0102"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    :goto_2
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/umeng/analytics/filter/d;
    .locals 3

    sget-object v0, Lcom/umeng/analytics/filter/d;->instance:Lcom/umeng/analytics/filter/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/umeng/analytics/filter/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/filter/d;->instance:Lcom/umeng/analytics/filter/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/umeng/analytics/filter/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/umeng/analytics/filter/d;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/umeng/analytics/filter/d;->instance:Lcom/umeng/analytics/filter/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/umeng/analytics/filter/d;->instance:Lcom/umeng/analytics/filter/d;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    iget-object v1, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/lang/Object;

    check-cast p0, Ljava/security/MessageDigest;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 p1, 0x0

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    const/4 v0, 0x3

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public dismiss()V
    .locals 2

    iget-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/music/FloatingResizePreviewOverlay$PreviewView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    if-nez v0, :cond_0

    const-string v0, "Glide registry"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2}, Lcom/bumptech/glide/RegistryFactory;->createAndInitRegistry(Lcom/bumptech/glide/Glide;Ljava/util/List;)Lcom/bumptech/glide/Registry;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public maybeRegisterReceiver()V
    .locals 5

    iget-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources;

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v1}, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    :try_start_0
    invoke-interface {v1}, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/commonsdk/framework/a$1;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "ConnectivityMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Failed to register callback"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/umeng/analytics/filter/d;->e:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public show(IIII)V
    .locals 3

    iget-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/umeng/analytics/filter/d;->update(IIII)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x218

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    iget-object v1, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/music/FloatingResizePreviewOverlay$PreviewView;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/umeng/analytics/filter/d;->update(IIII)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget p2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/filter/d;->dismiss()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/umeng/analytics/filter/d;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    iget-object p0, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    const/high16 v5, -0x1000000

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v5, v2, 0x2

    const/high16 v6, 0xff0000

    and-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v2, 0x3

    const v6, 0xff00

    and-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v2, v2, 0x4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "\u0102"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(IIII)V
    .locals 3

    iget-object p0, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/FloatingResizePreviewOverlay$PreviewView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingResizePreviewOverlay$PreviewView;->rect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
