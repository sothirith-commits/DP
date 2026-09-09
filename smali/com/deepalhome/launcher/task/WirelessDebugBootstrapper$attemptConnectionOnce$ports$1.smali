.class public final Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$attemptConnectionOnce$ports$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$attemptConnectionOnce$ports$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$attemptConnectionOnce$ports$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$attemptConnectionOnce$ports$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$attemptConnectionOnce$ports$1;->INSTANCE:Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$attemptConnectionOnce$ports$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    const-string p0, "it"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
