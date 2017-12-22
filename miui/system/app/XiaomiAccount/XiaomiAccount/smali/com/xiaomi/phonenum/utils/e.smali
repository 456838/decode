.class Lcom/xiaomi/phonenum/utils/e;
.super Landroid/telephony/PhoneStateListener;
.source ""


# instance fields
.field final synthetic acM:Lcom/xiaomi/phonenum/utils/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/phonenum/utils/h;I)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/phonenum/utils/e;->acM:Lcom/xiaomi/phonenum/utils/h;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    invoke-static {p2}, Lcom/xiaomi/phonenum/utils/z;->amW(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "mSubId"

    invoke-static {p0, v1, v0}, Lcom/xiaomi/phonenum/utils/g;->amk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
