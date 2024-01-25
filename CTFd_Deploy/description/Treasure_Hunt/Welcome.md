**環境建立說明：**

1. 打開 Terminal 建立一個放 SCIST - Linux 相關檔案的資料夾（直接複製以下指令）

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code1">
      mkdir ~/SCIST_Linux_Challenge && cd ~/SCIST_Linux_Challenge
    </div>
  </div>
  <button class="copy-button" id="copy1" onclick="copyCode('copy1', 'code1')"><i class='code-box-icon'></i></button>
</div>
<br>

2. 下載 `snippet.sh` 並用它來安裝需要的 Package（直接複製以下指令）

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code2">
      wget https://linux.ctf.scist.org/files/8aa6b2be1483d870d50b4695c62d82cd/snippet && chmod +x snippet && ./snippet install
    </div>
  </div>
  <button class="copy-button" id="copy2" onclick="copyCode('copy2', 'code2')"><i class='code-box-icon'></i></button>
</div>
<br>

3. 重新啟動（如果原本就有 Docker 就不需要）

---

**使用說明：**

0. 移動到挑戰資料的資料夾（直接複製以下指令）：

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code3">
      cd ~/SCIST_Linux_Challenge
    </div>
  </div>
  <button class="copy-button" id="copy3" onclick="copyCode('copy3', 'code3')"><i class='code-box-icon'></i></button>
</div>
<br>

1. 開始挑戰（直接複製以下指令）：

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code4">
      ./snippet start
    </div>
  </div>
  <button class="copy-button" id="copy4" onclick="copyCode('copy4', 'code4')"><i class='code-box-icon'></i></button>
</div>
<br>

2. 關閉挑戰（直接複製以下指令）：

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code5">
      ./snippet stop
    </div>
  </div>
  <button class="copy-button" id="copy5" onclick="copyCode('copy5', 'code5')"><i class='code-box-icon'></i></button>
</div>
<br>

3. 取得說明（直接複製以下指令）：

<div class="code-box">
  <div class="code-view">
    <div class="code" id="code6">
      ./snippet
    </div>
  </div>
  <button class="copy-button" id="copy6" onclick="copyCode('copy6', 'code6')"><i class='code-box-icon'></i></button>
</div>
<br>

---

**重要資訊 :**
1. 離開挑戰請輸入 `exit`
2. 電腦關機前一定要記得關閉挑戰
3. 如果在挑戰中需要使用到 `sudo`，密碼是 `password`
4. Flag format : `SCIST{.*}`

<br>

Author : Curious

<style>
  .code-box {
    background-color: rgba(0, 0, 0, 0.1);
    width: 100%;
    position: relative;
    font-family: monospace;
    border: none;
    border-radius: 10px;
    display: flex;
    align-items: center;
  }

  .code-view {
    width: 100%;
    overflow-x: scroll;
    padding: 15px 0;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .code {
    display: inline-block;
    white-space: nowrap;
    padding: 0 60px 0 20px;
		font-size: 16px;
  }

  .copy-button {
    cursor: pointer;
    position: absolute;
    right: 6px;
    display: inline-flex;
    align-items: center;
    padding: 12px;
    outline: 0;
    border: 0;
    border-radius: 50%;
    background: #004cbd;
    transition: all .3s ease;
  }

  .copy-button:hover {
    opacity: 0.8;
  }

  .code-box-icon {
    flex-shrink: 0;
    display: inline-block;
    width: 18px;
    height: 18px;
    background-image: url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' fill='none' stroke='%23fefefe' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' viewBox='0 0 24 24'><rect x='5.54615' y='5.54615' width='16.45385' height='16.45385' rx='4'/><path d='M171.33311,181.3216v-8.45385a4,4,0,0,1,4-4H183.787' transform='translate(-169.33311 -166.86775)'/></svg>");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
  }

  .copy-button.copied {
    background: #2dcda7;
  }

  .copy-button.copied .copy-box-icon{
    background-image:url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' fill='none' stroke='%23fefefe' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' viewBox='0 0 24 24'><path d='M22 11.07V12a10 10 0 1 1-5.93-9.14'/><polyline points='23 3 12 14 9 11'/></svg>")
  }
</style>

<script>
  function copyCode(e, t){
    var o = document.getElementById(e), n = document.getElementById(t), e = getSelection(), t = document.createRange();
    e.removeAllRanges(), t.selectNodeContents(n), e.addRange(t), document.execCommand("copy"), e.removeAllRanges(), o.classList.add("copied"), setTimeout(() => {o.classList.remove("copied")}, 3e3)
  }
</script>