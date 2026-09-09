.class public final Lcom/deepalhome/launcher/task/TaskExecutor$S05FogLightSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fogLamp:Ljava/lang/Integer;

.field public final headSwitch:Ljava/lang/Integer;

.field public final headlightsOn:Z


# direct methods
.method public constructor <init>(Ljava/lang/Integer;ZLjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/TaskExecutor$S05FogLightSnapshot;->headSwitch:Ljava/lang/Integer;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/task/TaskExecutor$S05FogLightSnapshot;->headlightsOn:Z

    iput-object p3, p0, Lcom/deepalhome/launcher/task/TaskExecutor$S05FogLightSnapshot;->fogLamp:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native hashCode()I
.end method

.method public final native toString()Ljava/lang/String;
.end method
