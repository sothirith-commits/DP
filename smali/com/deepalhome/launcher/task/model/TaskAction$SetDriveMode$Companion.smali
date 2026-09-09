.class public final Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getModeName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "Unknown mode"

    goto :goto_0

    :cond_0
    const-string p0, "Special mode"

    goto :goto_0

    :cond_1
    const-string p0, "Economy mode"

    goto :goto_0

    :cond_2
    const-string p0, "Sport mode"

    goto :goto_0

    :cond_3
    const-string p0, "Comfort mode"

    goto :goto_0

    :cond_4
    const-string p0, "Custom mode"

    :goto_0
    return-object p0
.end method