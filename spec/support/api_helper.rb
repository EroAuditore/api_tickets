module ApiHelpers
    def json
        JSON.parse(response.body)
    end
    def json_pretty
        JSON.pretty_generate(JSON.parse(response.body))
    end    
end