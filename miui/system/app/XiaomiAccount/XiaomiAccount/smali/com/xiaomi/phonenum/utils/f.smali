.class Lcom/xiaomi/phonenum/utils/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic acN:Lcom/xiaomi/phonenum/utils/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/utils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/utils/f;->acN:Lcom/xiaomi/phonenum/utils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/f;->acN:Lcom/xiaomi/phonenum/utils/h;

    invoke-static {v0}, Lcom/xiaomi/phonenum/utils/h;->amv(Lcom/xiaomi/phonenum/utils/h;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/utils/f;->acN:Lcom/xiaomi/phonenum/utils/h;

    invoke-static {v1}, Lcom/xiaomi/phonenum/utils/h;->amu(Lcom/xiaomi/phonenum/utils/h;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
