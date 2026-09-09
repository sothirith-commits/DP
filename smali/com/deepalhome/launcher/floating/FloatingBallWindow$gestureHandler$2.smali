.class public final Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$2;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-wide v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->lastDragAt:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
