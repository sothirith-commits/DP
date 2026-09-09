.class public final Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;
.super Lcom/deepalhome/launcher/task/model/TaskAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LowBeamOn"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "Turn on the approach light"

    const/4 v1, 0x0

    const-string v2, "low_beam_on"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
