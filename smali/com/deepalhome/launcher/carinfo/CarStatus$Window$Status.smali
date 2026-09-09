.class public final Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;
.super Lcom/deepalhome/launcher/carinfo/CarStatus;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/carinfo/CarStatus;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;->value:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/carinfo/CarStatus;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;->value:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;->value:Ljava/lang/Object;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$Window$Status;->value:Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
