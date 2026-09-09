.class public final Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Speed;
.super Lcom/deepalhome/launcher/carinfo/CarStatus$AC;
.source "SourceFile"


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    return-void
.end method
