.class public final Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;
.super Lcom/deepalhome/launcher/task/model/TaskAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchMusic"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "Open the previously used music"

    const/4 v1, 0x0

    const-string v2, "launch_music"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
