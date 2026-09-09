.class public final Lcom/deepalhome/launcher/util/NetworkStateMonitor$init$networkCallback$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $cm:Landroid/net/ConnectivityManager;

.field public final synthetic $onNetworkAvailable:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/deepalhome/launcher/App$onCreate$1;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/NetworkStateMonitor$init$networkCallback$1;->$cm:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/NetworkStateMonitor$init$networkCallback$1;->$onNetworkAvailable:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->INSTANCE:Lcom/deepalhome/launcher/util/NetworkStateMonitor;

    iget-object v0, p0, Lcom/deepalhome/launcher/util/NetworkStateMonitor$init$networkCallback$1;->$cm:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/NetworkStateMonitor$init$networkCallback$1;->$onNetworkAvailable:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->currentNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result p1

    sget-boolean v0, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->isValidatedAvailable:Z

    sput-boolean p1, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->isValidatedAvailable:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "networkCapabilities"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->INSTANCE:Lcom/deepalhome/launcher/util/NetworkStateMonitor;

    iget-object p2, p0, Lcom/deepalhome/launcher/util/NetworkStateMonitor$init$networkCallback$1;->$cm:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/NetworkStateMonitor$init$networkCallback$1;->$onNetworkAvailable:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->currentNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result p1

    sget-boolean p2, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->isValidatedAvailable:Z

    sput-boolean p1, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->isValidatedAvailable:Z

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->INSTANCE:Lcom/deepalhome/launcher/util/NetworkStateMonitor;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/NetworkStateMonitor$init$networkCallback$1;->$cm:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->currentNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result p0

    sput-boolean p0, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->isValidatedAvailable:Z

    return-void
.end method
