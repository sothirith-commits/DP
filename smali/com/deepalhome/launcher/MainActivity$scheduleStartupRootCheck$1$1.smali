.class public final Lcom/deepalhome/launcher/MainActivity$scheduleStartupRootCheck$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/MainActivity$scheduleStartupRootCheck$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/MainActivity$scheduleStartupRootCheck$1$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/MainActivity$scheduleStartupRootCheck$1$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/MainActivity$scheduleStartupRootCheck$1$1;->INSTANCE:Lcom/deepalhome/launcher/MainActivity$scheduleStartupRootCheck$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/RootAccessState;->runAfterStartupCheck(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
