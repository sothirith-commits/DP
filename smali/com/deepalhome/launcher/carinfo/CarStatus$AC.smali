.class public abstract Lcom/deepalhome/launcher/carinfo/CarStatus$AC;
.super Lcom/deepalhome/launcher/carinfo/CarStatus;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final value:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Number;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/carinfo/CarStatus;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/16 v1, 0x64

    int-to-float v1, v1

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f13046a

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method
