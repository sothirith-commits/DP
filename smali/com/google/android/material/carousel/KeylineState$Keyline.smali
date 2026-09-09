.class public final Lcom/google/android/material/carousel/KeylineState$Keyline;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cutoff:F

.field public final isAnchor:Z

.field public final loc:F

.field public final locOffset:F

.field public final mask:F

.field public final maskedItemSize:F


# direct methods
.method public constructor <init>(FFFFZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    iput p2, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iput p3, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iput p4, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iput-boolean p5, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    iput p6, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    return-void
.end method
