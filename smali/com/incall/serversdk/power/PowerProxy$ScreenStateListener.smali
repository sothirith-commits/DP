.class Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;
.super Lcom/incall/serversdk/power/IScreenStateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/power/PowerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenStateListener"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final this$0:Lcom/incall/serversdk/power/PowerProxy;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/power/PowerProxy;)V
    .locals 1

    iput-object p1, p0, Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;->this$0:Lcom/incall/serversdk/power/PowerProxy;

    invoke-direct {p0}, Lcom/incall/serversdk/power/IScreenStateListener$Stub;-><init>()V

    new-instance p1, Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener$1;-><init>(Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onWelScreenStateChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
