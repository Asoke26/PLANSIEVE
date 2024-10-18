SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 3
AND u.Views <= 2866
AND u.DownVotes >= 82
AND c.CreationDate >= 619
AND c.CreationDate <= 1097
AND u.CreationDate <= 972

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;