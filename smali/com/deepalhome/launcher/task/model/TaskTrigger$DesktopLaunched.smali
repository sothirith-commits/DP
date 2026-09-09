.class public final Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;
.super Lcom/deepalhome/launcher/task/model/TaskTrigger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DesktopLaunched"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "Desktop launch"

    const/4 v1, 0x0

    const-string v2, "desktop_launched"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
