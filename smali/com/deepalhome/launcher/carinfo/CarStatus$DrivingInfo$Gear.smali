.class public final Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Gear;
.super Lcom/deepalhome/launcher/carinfo/CarStatus$AC;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    return-void
.end method
