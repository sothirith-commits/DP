.class public final Lcom/openos/ConnectionServiceBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/openos/ConnectionServiceBase$1;->$r8$classId:I

    iput-object p2, p0, Lcom/openos/ConnectionServiceBase$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget v0, p0, Lcom/openos/ConnectionServiceBase$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "VCar_1.0.3.w"

    const-string v1, "binderDied()-----"

    invoke-static {v0, v1}, Lcom/openos/virtualcar/utils/WTLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/openos/ConnectionServiceBase$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/openos/virtualcar/VirtualCar;

    invoke-virtual {p0}, Lcom/openos/virtualcar/VirtualCar;->serviceDied()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/openos/ConnectionServiceBase$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;

    invoke-virtual {p0}, Lcom/openos/ConnectionServiceBase;->serviceBinderDied()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/openos/ConnectionServiceBase$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/openos/ConnectionServiceBase;

    invoke-virtual {p0}, Lcom/openos/ConnectionServiceBase;->serviceBinderDied()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
