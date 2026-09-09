.class Lcom/incall/serversdk/devices/DevicesManagerProxy$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/devices/DevicesManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/devices/DevicesManagerProxy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$1;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/incall/serversdk/devices/UsbDevice;

    iget-object v0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$1;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-static {v0}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->access$100(Lcom/incall/serversdk/devices/DevicesManagerProxy;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$1;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-static {p0}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->access$100(Lcom/incall/serversdk/devices/DevicesManagerProxy;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/incall/serversdk/devices/OnUsbStatusChangeListener;

    invoke-interface {v0, p1}, Lcom/incall/serversdk/devices/OnUsbStatusChangeListener;->onDevicesDisconntect(Lcom/incall/serversdk/devices/UsbDevice;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/incall/serversdk/devices/UsbDevice;

    iget-object v0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$1;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-static {v0}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->access$100(Lcom/incall/serversdk/devices/DevicesManagerProxy;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$1;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-static {p0}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->access$100(Lcom/incall/serversdk/devices/DevicesManagerProxy;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/incall/serversdk/devices/OnUsbStatusChangeListener;

    invoke-interface {v0, p1}, Lcom/incall/serversdk/devices/OnUsbStatusChangeListener;->onDevicesConnect(Lcom/incall/serversdk/devices/UsbDevice;)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/incall/serversdk/devices/VolumeInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$1;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-static {v2}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->access$000(Lcom/incall/serversdk/devices/DevicesManagerProxy;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$1;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-static {v2}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->access$000(Lcom/incall/serversdk/devices/DevicesManagerProxy;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/incall/serversdk/devices/DevicesManagerProxy$1;->this$0:Lcom/incall/serversdk/devices/DevicesManagerProxy;

    invoke-static {p0}, Lcom/incall/serversdk/devices/DevicesManagerProxy;->access$000(Lcom/incall/serversdk/devices/DevicesManagerProxy;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/incall/serversdk/devices/OnMountedStatusChangeListener;

    invoke-interface {v2, v0, v1, p1}, Lcom/incall/serversdk/devices/OnMountedStatusChangeListener;->onVolumeStateChanged(Lcom/incall/serversdk/devices/VolumeInfo;II)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
