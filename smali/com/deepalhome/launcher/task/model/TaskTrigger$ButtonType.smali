.class public abstract Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;
.super Lcom/deepalhome/launcher/task/model/TaskTrigger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$Companion;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey1;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey2;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;,
        Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$Companion;


# instance fields
.field private final buttonType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "button_"

    invoke-static {v0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/deepalhome/launcher/task/model/TaskTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;->buttonType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getButtonType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;->buttonType:Ljava/lang/String;

    return-object p0
.end method

.method public getPickerDisplayName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Steering wheel button - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
