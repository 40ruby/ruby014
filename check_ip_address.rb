def CheckIPAddress(ip)
    # 引数は文字列のみを受け付けることとする
    return false unless ip.is_a?(String)

    return true
end
