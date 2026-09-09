.class public final Lcom/deepalhome/launcher/view/RoundedFrameLayout$xferPaint$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/view/RoundedFrameLayout$xferPaint$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/view/RoundedFrameLayout$xferPaint$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout$xferPaint$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/view/RoundedFrameLayout$xferPaint$2;->INSTANCE:Lcom/deepalhome/launcher/view/RoundedFrameLayout$xferPaint$2;

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

    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object p0
.end method
