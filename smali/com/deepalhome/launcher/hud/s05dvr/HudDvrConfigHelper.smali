.class public final Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native formatPx(I)Ljava/lang/String;
.end method

.method public static native formatScale(I)Ljava/lang/String;
.end method

.method public static native normalizePx(II)I
.end method
