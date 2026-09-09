.class public final Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;
.super Lcom/deepalhome/launcher/task/model/TaskCondition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Invalid"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "Invalid condition"

    const/4 v1, 0x0

    const-string v2, "invalid"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskCondition;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "Unknown condition"

    return-object p0
.end method
