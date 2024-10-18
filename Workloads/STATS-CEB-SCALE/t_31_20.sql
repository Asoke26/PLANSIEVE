SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 337
AND u.Views <= 1673
AND u.DownVotes >= 104
AND u.DownVotes <= 126
AND u.UpVotes <= 598
AND c.CreationDate >= 107
AND c.CreationDate <= 909
AND ph.CreationDate >= 275
AND ph.CreationDate <= 985
AND v.CreationDate >= 922
AND v.CreationDate <= 1166

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;