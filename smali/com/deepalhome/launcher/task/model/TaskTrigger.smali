.class public abstract Lcom/deepalhome/launcher/task/model/TaskTrigger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOff;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOn;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$MapCardOpenMap;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$None;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$SteeringWheelButton;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$WifiConnected;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->displayName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/TaskTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public getPickerDisplayName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->type:Ljava/lang/String;

    return-object p0
.end method
