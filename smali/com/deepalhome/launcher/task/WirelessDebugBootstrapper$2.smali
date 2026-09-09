.class public final synthetic Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$2;->INSTANCE:Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "sleep(J)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Thread;

    const-string v3, "sleep"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
