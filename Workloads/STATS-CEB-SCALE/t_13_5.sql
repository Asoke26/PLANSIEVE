SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 150.0
AND u.UpVotes = 683
AND c.CreationDate >= 608
AND c.CreationDate <= 1097
AND u.CreationDate <= 1261

AND u.Id = c.UserId
AND u.Id = v.UserId;