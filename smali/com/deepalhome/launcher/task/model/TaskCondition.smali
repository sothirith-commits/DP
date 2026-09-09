.class public abstract Lcom/deepalhome/launcher/task/model/TaskCondition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;,
        Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;,
        Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;,
        Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;,
        Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;
    }
.end annotation


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/model/TaskCondition;->displayName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/TaskCondition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition;->type:Ljava/lang/String;

    return-object p0
.end method
