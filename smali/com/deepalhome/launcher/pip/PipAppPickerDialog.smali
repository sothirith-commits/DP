.class public final Lcom/deepalhome/launcher/pip/PipAppPickerDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/pip/PipAppPickerDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/pip/PipAppPickerDialog;

    invoke-direct {v0}, Lcom/deepalhome/launcher/pip/PipAppPickerDialog;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/pip/PipAppPickerDialog;->INSTANCE:Lcom/deepalhome/launcher/pip/PipAppPickerDialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native dpToPx(Landroid/content/Context;I)I
.end method
