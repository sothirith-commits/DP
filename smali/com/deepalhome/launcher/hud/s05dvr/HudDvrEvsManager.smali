.class public final Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;

.field public static volatile connected:Z

.field public static volatile connecting:Z

.field public static volatile connectionCallback:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native closeSubCamera()V
.end method

.method public static native isSupported()Z
.end method

.method public static native registerCallback()V
.end method

.method public static native setSubSurface(Landroid/view/Surface;II)Z
.end method
