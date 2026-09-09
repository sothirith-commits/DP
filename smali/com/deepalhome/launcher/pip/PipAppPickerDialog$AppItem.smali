.class public final Lcom/deepalhome/launcher/pip/PipAppPickerDialog$AppItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final className:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    const-string v0, "label"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/pip/PipAppPickerDialog$AppItem;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/pip/PipAppPickerDialog$AppItem;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/pip/PipAppPickerDialog$AppItem;->className:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/pip/PipAppPickerDialog$AppItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native hashCode()I
.end method

.method public final native toString()Ljava/lang/String;
.end method
