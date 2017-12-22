.class public Lcom/xiaomi/phonenum/utils/y;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static adg:Lcom/xiaomi/phonenum/utils/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amS(Ljava/lang/String;J)V
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/utils/y;->adg:Lcom/xiaomi/phonenum/utils/t;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/phonenum/utils/y;->adg:Lcom/xiaomi/phonenum/utils/t;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/phonenum/utils/t;->amO(Ljava/lang/String;J)V

    return-void

    :cond_0
    return-void
.end method
